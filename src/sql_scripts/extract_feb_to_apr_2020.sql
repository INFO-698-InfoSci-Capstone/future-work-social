CREATE OR REPLACE TABLE `*****service-key*****.2020_dataset.feb_to_apr_2020` AS
SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.202002`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.202003`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.202004`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)];