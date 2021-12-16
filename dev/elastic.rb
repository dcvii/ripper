require 'docile'
require 'elasticbi/core'
require 'aws-sdk'
require 'fileutils'
require 'jruby/synchronized'
require 'forwardable'
require 'yaml'
require 'erb'

module ElasticBI
	class JDBCDsl < ElasticBI::Dash
		include Forwardable
		#def_delegators :@result_hash, :[]
		#def_delegators :@parent, :db_connect

		property :status
		property :db_connect

		#query properties
		property :statement
		property :rollback_on_failure
		property :commit_on_success

		#result hash properties
		property "multi_value"
		property "key_field"
		
		attr_accessor :result_hash
		attr_accessor :result_array
		attr_accessor :return_value

		#erb properties
		property :erb_file
		property :erb_context
		property :vars

    #output file properties
    property :output_file_path
    property :delimiter
    property :record_separator
    property :escape
    property :escape_character
    property :enclosed_by
    property :header
    
		#connection properties
		attr_accessor :name
		attr_accessor :rows_affected
		attr_accessor :statement_id
		attr_accessor :error


	    def initialize(name)
			@name = name
	    end

	    def forward_this_object(obj)
	    	#puts obj
	    	#instance_eval "#{obj}.__persistent__ = true" if instance_eval "#{obj}.class.to_s.match(/^Java.*/)"
			(instance_eval "#{obj}.public_methods").each do |method|
				begin
					#puts method
					if method!=:singleton
						instance_eval "def self.#{method}(*args) #{obj}.send('#{method}',*args) end"
					end
				rescue
					next
				end
			end
	    end

		def action_sql_execute
			begin
				@statement=name if !@statement

				@erb_context=binding if !@erb_context

				@statement=ERB.new(IO.read(@erb_file)).result(@erb_context) if @erb_file
                
        #binding.pry
				stmt = db_connect.create_statement
				logger.info "executing statement in thread #{Thread.current.object_id}:\n#{@statement}"
				ret=stmt.execute_update(@statement)

				@rows_affected=ret

				if @commit_on_success
					logger.info "executing commit due to commit_on_success in thread #{Thread.current.object_id}"
					db_connect.commit
				end

				forward_this_object '@rows_affected'

			rescue => e
				@error = e
				logger.error "sql_execute error: #{e.message}"

				if @rollback_on_failure
					logger.error "attempting rollback due to rollback_on_failure in thread #{Thread.current.object_id}"
					begin
						db_connect.rollback if db_connect
					rescue => rb
						logger.error "rollback failed in thread #{Thread.current.object_id}: #{rb.message}"
					end
				end
			ensure
				stmt.close if stmt
			end
		end

		def rs_to_hash(rs,index_key_field,multi_val)
			#creates a hash from a jdbc record set
			#index_key_field is the field you want to use as the top level hash key... and should exist in the record set
			#multi_val=true will create an array below each index_key_filed, false will create a hash as the child

			#setting default hash value is necessary for appending to arrays
			hash=Hash.new{ |h, k| h[k] = [] }

			#get basic metadata for the recordset
			meta=rs.getMetaData
			cols=meta.getColumnCount.to_i

			#loop through the records to add them into hash
			while (rs.next) do
				#if multi_val is not true... create new hash value as an empty hash if it doesn't already exist
				hash[rs.getString(index_key_field)]={} if (!hash[rs.getString(index_key_field)] and !multi_val)

				#if multi_val is true... create new hash value as an empty array if it doesn't already exist
				hash[rs.getString(index_key_field)]=[] if (!hash[rs.getString(index_key_field)] and multi_val)

				#r is a temporary hash for the row being processed
				r=Hash.new

				#add each row to r
				(1..cols).each do |c|
					r[meta.column_name(c)]=rs.getObject(c)
					r[meta.column_name(c)]=r[meta.column_name(c)].to_s if [Java::JavaSql::Timestamp,Java::JavaSql::Date].include? r[meta.column_name(c)].class
				end #each cols

				#set hash value to r if not multi_val
				hash[rs.getString(index_key_field)]=r if !multi_val

				#append hash to r if multi_val
				hash[rs.getString(index_key_field)] << r if multi_val
			end #while

			#completed hash is returned
			return hash
		end

		def action_sql_query_to_hash
			begin
				@statement=name if !@statement

				@erb_context=binding if !@erb_context

				@statement=ERB.new(IO.read(@erb_file)).result(@erb_context) if @erb_file
				
				logger.info "executing query in thread #{Thread.current.object_id}:\n#{@statement}"
				
				stmt = db_connect.create_statement
				rs = stmt.execute_query(@statement)
				

				@result_hash=rs_to_hash(rs,@key_field,@multi_value)
        
        stmt=nil
        rs=nil
        
				forward_this_object '@result_hash'

			rescue => e
				@error = e
				logger.error "ERROR: #{e.message} IN THREAD #{Thread.current.object_id}"

				if @rollback_on_failure
					logger.error "attemping rollback due to rollback_on_failure in thread #{Thread.current.object_id}"
					begin
						db_connect.rollback if db_connect
					rescue => rb
						logger.error "rollback failed: #{rb.message} in thread #{Thread.current.object_id}"
					end
				end

			ensure
				stmt.close if stmt
			end
		end

		def rs_first_value(rs)

			#get first value

			rs.next
			value=rs.getObject(1)
			rs.close
      
			return value
		end

		def action_sql_query_to_single_value
			begin
				@statement=name if !@statement

				@erb_context=binding if !@erb_context

				@statement=ERB.new(IO.read(@erb_file)).result(@erb_context) if @erb_file

				stmt = db_connect.create_statement
				logger.info "executing query in thread #{Thread.current.object_id}:\n#{@statement}"
				rs = stmt.execute_query(@statement)
				@return_value=rs_first_value(rs)

				@return_value=@return_value.to_s if [Java::JavaSql::Timestamp,Java::JavaSql::Date].include? @return_value.class

				forward_this_object '@return_value'

			rescue => e
				@error = e
				logger.error "ERROR: #{e.message}"

				if @rollback_on_failure
					logger.error "attemping rollback due to rollback_on_failure in thread #{Thread.current.object_id}"
					begin
						db_connect.rollback if db_connect
					rescue => rb
						logger.error "rollback failed: #{rb.message} in thread #{Thread.current.object_id}"
					end
				end

			ensure
				stmt.close if stmt
			end
		end
		
		def rs_to_file(rs, file_path, delimiter, record_separator, escape_character, escape, enclosed_by, include_header)
      
      logger.debug "_______________________________________________ #{escape}"
      
      outfile=File.open(file_path,'w')
      
			#get basic metadata for the recordset
			meta=rs.getMetaData
			cols=meta.getColumnCount.to_i
			
			#create header
			if include_header==true
  			(1..cols).each do |c|
    			outfile.print delimiter if c > 1
    			outfile.print enclosed_by if enclosed_by
					outfile.print meta.column_name(c).to_s
					outfile.print enclosed_by if enclosed_by
				end
				outfile.print record_separator
  		end
      
      count=0
      
      escapes="#{escape_character}#{escape_character}#{escape_character}#{escape_character}"
      rec_seps="#{escape_character}#{escape_character}#{record_separator}"
      delim="#{escape_character}#{escape_character}#{delimiter}"
        
			#loop through and output every record to a file
			while (rs.next) do
				#add each row to r
				(1..cols).each do |c|
  				outfile.print delimiter unless c==1
  				if escape==true
    				outfile.print enclosed_by if enclosed_by
					  outfile.print rs.getObject(c).to_s.gsub(escape_character,escapes).gsub(record_separator,rec_seps ).gsub(delimiter,delim)
            outfile.print enclosed_by if enclosed_by
					else
					  outfile.print enclosed_by if enclosed_by
					  outfile.print rs.getObject(c).to_s
            outfile.print enclosed_by if enclosed_by
					end
					outfile.print record_separator if c==cols
					
				end #each cols
        count+=1
			end #while

			outfile.close
			
			logger.info "#{count} records written to file #{file_path}"
			return count
		end

		def action_sql_query_to_file
			begin
				@statement=name if !@statement

				@erb_context=binding if !@erb_context

				@statement=ERB.new(IO.read(@erb_file)).result(@erb_context) if @erb_file
				
				@delimiter='|' unless @delimiter
				@record_separator=10.chr unless @record_separator
				@escape_character=92.chr unless @escape_character
				@escape=true if @escape==nil
				@enclose_by=nil unless @enclosed_by
				
				stmt = db_connect.create_statement
				rs = stmt.execute_query(@statement)
				logger.info "executing query in thread #{Thread.current.object_id}:\n#{@statement}"

        @header=nil unless @header
        
				@rows_affected=rs_to_file(rs,@output_file_path,@delimiter,@record_separator,@escape_character,@escape,@enclosed_by,@header)
        
        stmt=nil
        rs=nil

        @rows_exported=@rows_affected
        
				forward_this_object '@rows_exported'

			rescue => e
				@error = e
				logger.error "ERROR: #{e.message} IN THREAD #{Thread.current.object_id}"

				if @rollback_on_failure
					logger.error "attemping rollback due to rollback_on_failure in thread #{Thread.current.object_id}"
					begin
						db_connect.rollback if db_connect
					rescue => rb
						logger.error "rollback failed: #{rb.message} in thread #{Thread.current.object_id}"
					end
				end

			ensure
				stmt.close if stmt
			end
		end		

		def rs_to_array(rs)
			#creates an array of hashes from a jdbc record set

			#setting default hash value is necessary for appending to arrays
			arr=Array.new

			#get basic metadata for the recordset
			meta=rs.getMetaData
			cols=meta.getColumnCount.to_i

			#loop through the records to add them into hash
			while (rs.next) do

				#r is a temporary hash for the row being processed
				r=Hash.new

				#add each row to r
				(1..cols).each do |c|
					r[meta.column_name(c)]=rs.getObject(c)
					r[meta.column_name(c)]=r[meta.column_name(c)].to_s if [Java::JavaSql::Timestamp,Java::JavaSql::Date].include? r[meta.column_name(c)].class
				end #each cols

				#append hash to array
				arr << r 
			end #while

			#completed hash is returned
			return arr
		end

		def action_sql_query_to_array
			begin
				@statement=name if !@statement

				@erb_context=binding if !@erb_context

				@statement=ERB.new(IO.read(@erb_file)).result(@erb_context) if @erb_file
				
				stmt = db_connect.create_statement
				rs = stmt.execute_query(@statement)
				logger.info "executing query in thread #{Thread.current.object_id}:\n#{@statement}"

				@result_array=rs_to_array(rs)
        
        stmt=nil
        rs=nil
        
				forward_this_object '@result_array'

			rescue => e
				@error = e
				logger.error "ERROR: #{e.message} IN THREAD #{Thread.current.object_id}"

				if @rollback_on_failure
					logger.error "attemping rollback due to rollback_on_failure in thread #{Thread.current.object_id}"
					begin
						db_connect.rollback if db_connect
					rescue => rb
						logger.error "rollback failed: #{rb.message} in thread #{Thread.current.object_id}"
					end
				end

			ensure
				stmt.close if stmt
			end
		end
		
	end
end
