-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT teams.name, players.first_name, players.last_name, MAX(home_runs) as most_runs
FROM teams INNER JOIN stats INNER JOIN players ON teams.id = stats.team_id AND players.id = stats.player_id
WHERE teams.year = 2019
ORDER BY most_runs DESC;