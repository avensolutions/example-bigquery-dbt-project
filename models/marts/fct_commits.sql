{{ config(materialized='table') }}

with commits as (
    SELECT 
    SUBSTR(c.commit, 0, 7) as commit_short_sha,
    committer.name as commiter_name,
    committer.date as commit_date,
    message,
    c.repo_name,
    rl.langauge_name as primary_langauge
    FROM `bigquery-public-data.github_repos.sample_commits` c
    INNER JOIN 
    (SELECT lang.repo_name, langauge_name FROM
    (SELECT repo_name, langauge_name, language_rank FROM 
        (SELECT repo_name,
        l.name as langauge_name,
        RANK() OVER (PARTITION BY repo_name, l.name ORDER BY l.bytes DESC) as language_rank
        FROM `bigquery-public-data.github_repos.languages`, UNNEST(language) l)
    WHERE language_rank = 1) lang) rl
    ON rl.repo_name = c.repo_name
)

select * from commits
