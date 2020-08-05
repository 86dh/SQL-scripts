--
--  Author: Hari Sekhon
--  Date: 2020-08-05 12:52:58 +0100 (Wed, 05 Aug 2020)
--
--  vim:ts=4:sts=4:sw=4:et
--
--  https://github.com/harisekhon/bash-tools
--
--  License: see accompanying Hari Sekhon LICENSE file
--
--  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
--
--  https://www.linkedin.com/in/harisekhon
--

-- Running queries for PostgreSQL < 9.2

SELECT procpid,
	   age(clock_timestamp(), query_start),
	   usename,
 	   current_query
FROM pg_stat_activity
WHERE current_query != '<IDLE>'
  AND current_query NOT ILIKE '%pg_stat_activity%'
ORDER BY query_start desc;
