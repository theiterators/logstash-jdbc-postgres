FROM logstash:6.8.4

LABEL maintainer "lukasz@iterato.rs"

RUN logstash-plugin install logstash-output-jdbc
ADD https://jdbc.postgresql.org/download/postgresql-42.2.8.jar /usr/share/logstash/vendor/jar/jdbc/postgresql-42.2.8.jar
CMD ["logstash", "-f", "/usr/share/logstash/pipeline/logstash.conf"]
