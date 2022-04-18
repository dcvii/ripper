EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/source') AS SELECT * FROM product.source;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/basket_price') AS SELECT * FROM product.basket_price;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/normalization_factor') AS SELECT * FROM product.normalization_factor;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/promotional_item') AS SELECT * FROM product.promotional_item;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/basket_item') AS SELECT * FROM product.basket_item;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/basket') AS SELECT * FROM product.basket;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/mb_source_prod_06102020') AS SELECT * FROM product.mb_source_prod_06102020;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12G/product/source_product') AS SELECT * FROM product.source_product;
