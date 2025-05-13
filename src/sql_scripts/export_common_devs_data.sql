EXPORT DATA OPTIONS (
  uri='gs://***bucket-name***/common_devs_2019_2020_export/*.parquet',
  format='PARQUET',
  overwrite=true
)
AS
SELECT *
FROM `*****service-key*****.2019_2020_dataset.common_devs_feb_apr`