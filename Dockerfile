FROM tomcat:latest

RUN apt-get update && apt-get install -y wget
RUN rm -rf /usr/local/tomcat/webapps/*

RUN wget -O /usr/local/tomcat/webapps/ROOT.war http://52.15.127.3:8081/repository/myapp/com/exam/studentapp/1/studentapp-1.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
