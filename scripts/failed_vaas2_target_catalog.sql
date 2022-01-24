


CREATE TABLE drug.ctrx2_src
(
    man varchar(100),
    ncd int,
    ""desc"" varchar(750),
    date_market date,
    wac_intro numeric(37,15),
    patient_ct varchar(25),
    break varchar(25),
    acq_date date,
    acq_price numeric(25,0),
    acq_indicator varchar(25)
);


CREATE TABLE public.iris
(
    Id int,
    SepalLengthCm numeric(5,2),
    SepalWidthCm numeric(5,2),
    PetalLengthCm numeric(5,2),
    PetalWidthCm numeric(5,2),
    Species varchar(30)
);


CREATE TABLE public.online_retail
(
    InvoiceNo varchar(20),
    StockCode varchar(24),
    Description varchar(70),
    Quantity int,
    InvoiceDate timestamp,
    UnitPrice numeric(10,4),
    CustomerID int,
    Country varchar(40)
);