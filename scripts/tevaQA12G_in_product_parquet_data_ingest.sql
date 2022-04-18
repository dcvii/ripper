COPY product.source FROM 's3://teva-export-buckt/tevaQA12G/product/source/*' PARQUET;
COPY product.basket_price FROM 's3://teva-export-buckt/tevaQA12G/product/basket_price/*' PARQUET;
COPY product.normalization_factor FROM 's3://teva-export-buckt/tevaQA12G/product/normalization_factor/*' PARQUET;
COPY product.promotional_item FROM 's3://teva-export-buckt/tevaQA12G/product/promotional_item/*' PARQUET;
COPY product.basket_item FROM 's3://teva-export-buckt/tevaQA12G/product/basket_item/*' PARQUET;
COPY product.basket FROM 's3://teva-export-buckt/tevaQA12G/product/basket/*' PARQUET;
COPY product.mb_source_prod_06102020 FROM 's3://teva-export-buckt/tevaQA12G/product/mb_source_prod_06102020/*' PARQUET;
COPY product.source_product FROM 's3://teva-export-buckt/tevaQA12G/product/source_product/*' PARQUET;
