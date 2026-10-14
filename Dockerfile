FROM tomcat:9.0-jdk11-corretto

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY ./ejercicios /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080

CMD ["catalina.sh", "run"]
