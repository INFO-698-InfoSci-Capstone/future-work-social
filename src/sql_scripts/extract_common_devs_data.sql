CREATE TABLE `****service-key****.2019_2020_dataset.common_devs_feb_apr` AS

WITH devs_2019 AS (
  SELECT DISTINCT actor.login AS actor
  FROM `githubarchive.month.201902`
  WHERE actor.login IS NOT NULL
    AND repo.name IS NOT NULL
    AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  UNION DISTINCT
  SELECT DISTINCT actor.login
  FROM `githubarchive.month.201903`
  WHERE actor.login IS NOT NULL
    AND repo.name IS NOT NULL
    AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  UNION DISTINCT
  SELECT DISTINCT actor.login
  FROM `githubarchive.month.201904`
  WHERE actor.login IS NOT NULL
    AND repo.name IS NOT NULL
    AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
),
devs_2020 AS (
  SELECT DISTINCT actor.login AS actor
  FROM `githubarchive.month.202002`
  WHERE actor.login IS NOT NULL
    AND repo.name IS NOT NULL
    AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  UNION DISTINCT
  SELECT DISTINCT actor.login
  FROM `githubarchive.month.202003`
  WHERE actor.login IS NOT NULL
    AND repo.name IS NOT NULL
    AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  UNION DISTINCT
  SELECT DISTINCT actor.login
  FROM `githubarchive.month.202004`
  WHERE actor.login IS NOT NULL
    AND repo.name IS NOT NULL
    AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
),
common_devs AS (
  SELECT actor FROM devs_2019
  INTERSECT DISTINCT
  SELECT actor FROM devs_2020
)

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.201902`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  AND actor.login IN (SELECT actor FROM common_devs)

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.201903`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  AND actor.login IN (SELECT actor FROM common_devs)

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.201904`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  AND actor.login IN (SELECT actor FROM common_devs)

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.202002`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  AND actor.login IN (SELECT actor FROM common_devs)

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.202003`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  AND actor.login IN (SELECT actor FROM common_devs)

UNION ALL

SELECT id, type, created_at, actor.login AS actor, repo.name AS repo, payload
FROM `githubarchive.month.202004`
WHERE actor.login IS NOT NULL
  AND repo.name IS NOT NULL
  AND actor.login != SPLIT(repo.name, '/')[OFFSET(0)]
  AND actor.login IN (SELECT actor FROM common_devs)