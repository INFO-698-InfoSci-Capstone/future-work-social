EXPORT DATA OPTIONS (
  uri='gs://***bucket-name***/2020_export/*.parquet',
  format='PARQUET',
  overwrite=true
)
AS
SELECT *
FROM `*****service-key*****.2020_dataset.feb_to_apr_2020`;