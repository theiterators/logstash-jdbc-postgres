# logstash-jdbc-postgres

Dockerfile for logstash with PostgreSQL support via JDBC.

## Usage

See examples directory. Provided docker-compose.yml spins up logstash that pushes logs from `./logs/backend.log` to `your_postgresql_adddress:5432`, database `logs`, table `production` with user `YOUR_USER` and password 
`YOUR_PASSWORD`. Database schema is in table.sql file. Supported log format is pretty standard logback format - check logstash.conf for parsing and jdbc output format.

## Author & license

If you have any questions regarding this project contact:

Łukasz Sowa <lukasz@iterato.rs> from [Iterators](https://www.iteratorshq.com).

For licensing info see LICENSE file in project's root directory.
