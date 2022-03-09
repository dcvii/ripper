# runner guide




### sequences

Note that the runner will run this which is a union of two queries:
- out_sequences.sql

This is a combination of creation and alteration of sequences. You should expect some failures because of the following exceptional way that certain sequences are created:


<blockquote>You can only modify a named sequence—that is, a sequence that was defined by CREATE SEQUENCE. AUTO_INCREMENT and IDENTITY sequences are owned by the table where they were created, and cannot be changed independently of that table.</blockquote>

It is presumed that the existence of an `identity_table_name` indicates that a sequence is defined by table ddl. These will therefore not be processed by this runner. 

Therefore it is up to the user to identify those tables which create sequences by their definition and manually synchronize the latest indicies and then write the appropriate alter sequence statement so that new indices will generate properly.

