#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Hari Sekhon
#  Date: 2020-08-12 12:13:30 +0100 (Wed, 12 Aug 2020)
#
#  https://github.com/harisekhon/sql
#
#  License: see accompanying Hari Sekhon LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/harisekhon
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$srcdir"

if ! type -P mysql_test_scripts.sh &>/dev/null ||
   ! type -P mariadb_test_scripts.sh &>/dev/null ||
   ! type -P postgres_test_scripts.sh &>/dev/null; then
    curl https://raw.githubusercontent.com/HariSekhon/DevOps-Bash-tools/master/setup/bootstrap.sh | sh
fi

export MYSQL_CONTAINER_NAME=mysql-scripts-test
export MARIADB_CONTAINER_NAME=mariadb-scripts-test
export POSTGRES_CONTAINER_NAME=postgres-scripts-test

mysql_test_scripts.sh

postgres_test_scripts.sh

mariadb_test_scripts.sh
