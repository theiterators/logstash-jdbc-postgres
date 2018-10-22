FROM blacktop/logstash:6.4

LABEL maintainer "lukasz@iterato.rs"

RUN logstash-plugin install logstash-output-jdbc
ADD https://jdbc.postgresql.org/download/postgresql-42.2.5.jar /usr/share/logstash/vendor/jar/jdbc/postgresql-42.2.5.jar
USER root
RUN chown -R logstash /usr/share/logstash/vendor/
CMD ["logstash", "-f", "/usr/share/logstash/pipeline/logstash.conf"]
