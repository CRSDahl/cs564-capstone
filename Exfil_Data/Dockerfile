FROM tomcat:8.0.36-jre8

RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR /Exfil Data

ADD vulnerable-application/log4shell-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

ADD index.html initial_download.sh secret_file.txt secretData.html ./

RUN chmod 700 initial_download.sh

EXPOSE 8080 

CMD ["catalina.sh", "run"]