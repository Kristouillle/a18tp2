FROM tomcat:latest
LABEL authors="ChrisV"
COPY target/tp2-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/tp2-1.0-SNAPSHOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]