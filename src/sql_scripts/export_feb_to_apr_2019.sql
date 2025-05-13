EXPORT DATA OPTIONS (
  uri='gs://***bucket-name***/2019_export/*.parquet',
  format='PARQUET',
  overwrite=true
)
AS
SELECT *
FROM `*****service-key*****.2019_dataset.feb_to_apr_2019`;