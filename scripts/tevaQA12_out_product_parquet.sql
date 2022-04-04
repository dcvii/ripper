EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/source') AS SELECT * FROM product.source;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/basket_price') AS SELECT * FROM product.basket_price;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/normalization_factor') AS SELECT * FROM product.normalization_factor;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/promotional_item') AS SELECT * FROM product.promotional_item;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/basket_item') AS SELECT * FROM product.basket_item;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/basket') AS SELECT * FROM product.basket;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/mb_source_prod_06102020') AS SELECT * FROM product.mb_source_prod_06102020;
EXPORT TO PARQUET (directory='s3://teva-export-buckt/tevaQA12/product/source_product') AS SELECT * FROM product.source_product;
