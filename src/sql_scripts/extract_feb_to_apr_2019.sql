CREATE OR REPLACE TABLE `*****service-key*****.2019_dataset.feb_to_apr_2019` AS
SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.201902`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.201903`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.201904`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)];