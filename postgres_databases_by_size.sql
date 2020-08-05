--
--  Author: Hari Sekhon
--  Date: 2020-08-05 14:54:12 +0100 (Wed, 05 Aug 2020)
--
--  vim:ts=2:sts=2:sw=2:et:filetype=sql
--
--  https://github.com/harisekhon/bash-tools
--
--  License: see accompanying Hari Sekhon LICENSE file
--
--  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
--
--  https://www.linkedin.com/in/harisekhon
--

-- List PostgreSQL databases by size descending
--
-- Tested on PostgreSQL 12.3

SELECT
  datname,
  pg_size_pretty(pg_database_size(datname))
FROM
  pg_database
ORDER
  BY pg_database_size(datname) DESC;
