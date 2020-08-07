SQL Scripts
===========

[![Linux](https://img.shields.io/badge/OS-Linux-blue?logo=linux)](https://github.com/HariSekhon/SQL-scripts#SQL-Scripts)
[![Mac](https://img.shields.io/badge/OS-Mac-blue?logo=apple)](https://github.com/HariSekhon/SQL-scripts#SQL-Scripts)
[![Lines of Code](https://img.shields.io/badge/lines%20of%20code-2.8k-lightgrey)](https://github.com/HariSekhon/SQL-scripts#SQL-Scripts)
[![Repo on GitHub](https://img.shields.io/badge/repo-GitHub-blue?logo=github)](https://github.com/HariSekhon/SQL-scripts)
[![Repo on GitLab](https://img.shields.io/badge/repo-GitLab-blue?logo=gitlab)](https://gitlab.com/HariSekhon/SQL-scripts)
[![Repo on BitBucket](https://img.shields.io/badge/repo-BitBucket-blue?logo=bitbucket)](https://bitbucket.org/HariSekhon/SQL-scripts)
[![CI Builds Overview](https://img.shields.io/badge/CI%20Builds-Overview%20Page-blue)](https://bitbucket.org/HariSekhon/devops-bash-tools/src/master/STATUS.md)

Useful SQL scripts, split from [DevOps Bash tools](https://github.com/harisekhon/devops-bash-tools), for which this is now a submodule.

- `aws_athena_cloudtrail_ddl.sql` - [AWS Athena](https://aws.amazon.com/athena/) DDL to setup up integration to query [CloudTrail](https://aws.amazon.com/cloudtrail/) logs from Athena
- `bigquery_billing_*.sql` - [Google BigQuery](https://cloud.google.com/bigquery) billing queries for [GCP](https://cloud.google.com/) services eg. highest cost services, most used GCP products, recent charges etc.
- `mysql_*.sql` - [MySQL](https://www.mysql.com/) queries for DBA investigating + performance tuning
   - `mysql_info.sql` - summary overview, useful to debug your `mysql.user` table auth effects (intended `USER()` vs actual `CURRENT_USER()`)
- `postgres_*.sql` - [PostgreSQL](https://www.postgresql.org/) queries for DBA investigating + performance tuning
   - `postgres_info.sql` - big summary overview, recommend you start here

You can quickly test the MySQL / PostgreSQL scripts using `mysqld.sh` / `postgres.sh` in the [DevOps Bash tools](https://github.com/harisekhon/devops-bash-tools) repo, which boots a docker container and drops in to `mysql` / `psql` shell with this directory mounted at `/sql` and used as `$PWD` for fast easy sourcing eg.

postgres:
```
\i /sql/postgres_query_times.sql
```

mysql:
```
source /sql/mysql_sessions.sql
```

or just

```
\i postgres_query_times.sql
```

```
\. mysql_sessions.sql
```

since the `$PWD` is set to `/sql` for convenience.


#### See Also:

- `sqlcase.pl` in the [DevOps Perl tools](https://github.com/harisekhon/devops-perl-tools) repo - autocases your SQL code
  - I use this a lot and call it via hotkey configured in my [.vimrc](https://github.com/HariSekhon/DevOps-Bash-tools/blob/master/.vimrc)
  - there are `*case.pl` specializations for most of the major RDBMS and distributed SQL systems, even several NoSQL systems, using each one's language specific keywords

* [DevOps Bash Tools](https://github.com/harisekhon/devops-bash-tools) - 300+ DevOps Bash Scripts, Advanced `.bashrc`, `.vimrc`, `.screenrc`, `.tmux.conf`, CI configs & Utility Code Library - AWS, GCP, Kubernetes, Kafka, Docker, Hadoop, SQL, Athena, BigQuery, Hive, Impala, PostgreSQL, MySQL, LDAP, Spotify API & MP3 tools, Git, Code & build linting, package management for Linux / Mac / Python / Perl / Ruby / NodeJS / Golang, and lots more random goodies

* [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) - 80+ DevOps CLI tools for AWS, Hadoop, HBase, Spark, Log Anonymizer, Ambari Blueprints, AWS CloudFormation, Linux, Docker, Spark Data Converters & Validators (Avro / Parquet / JSON / CSV / INI / XML / YAML), Elasticsearch, Solr, Travis CI, Pig, IPython

* [The Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins) - 450+ programs for Nagios monitoring your Hadoop & NoSQL clusters. Covers every Hadoop vendor's management API and every major NoSQL technology (HBase, Cassandra, MongoDB, Elasticsearch, Solr, Riak, Redis etc.) as well as message queues (Kafka, RabbitMQ), continuous integration (Jenkins, Travis CI) and traditional infrastructure (SSL, Whois, DNS, Linux)

* [DevOps Perl Tools](https://github.com/harisekhon/perl-tools) - 25+ DevOps CLI tools for Hadoop, HDFS, Hive, Solr/SolrCloud CLI, Log Anonymizer, Nginx stats & HTTP(S) URL watchers for load balanced web farms, Dockerfiles & SQL ReCaser (MySQL, PostgreSQL, AWS Redshift, Snowflake, Apache Drill, Hive, Impala, Cassandra CQL, Microsoft SQL Server, Oracle, Couchbase N1QL, Dockerfiles, Pig Latin, Neo4j, InfluxDB), Ambari FreeIPA Kerberos, Datameer, Linux...

* [HAProxy-configs](https://github.com/harisekhon/haproxy-configs) - 80+ HAProxy Configs for Hadoop, Big Data, NoSQL, Docker, Elasticsearch, SolrCloud, HBase, Cloudera, Hortonworks, MapR, MySQL, PostgreSQL, Apache Drill, Hive, Presto, Impala, ZooKeeper, OpenTSDB, InfluxDB, Prometheus, Kibana, Graphite, SSH, RabbitMQ, Redis, Riak, Rancher etc.

* [Dockerfiles](https://github.com/HariSekhon/Dockerfiles) - 50+ DockerHub public images for Docker & Kubernetes - Hadoop, Kafka, ZooKeeper, HBase, Cassandra, Solr, SolrCloud, Presto, Apache Drill, Nifi, Spark, Mesos, Consul, Riak, OpenTSDB, Jython, Advanced Nagios Plugins & DevOps Tools repos on Alpine, CentOS, Debian, Fedora, Ubuntu, Superset, H2O, Serf, Alluxio / Tachyon, FakeS3
