FROM java
MAINTAINER Mayank

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.55/bin/apache-tomcat-7.0.55.tar.gz
RUN tar xzf apache-tomcat-7.0.55.tar.gz
RUN chmod -R a+rwx /apache-tomcat-7.0.55/
EXPOSE 8080:8080


CMD apache-tomcat-7.0.55/bin/startup.sh && tail -f apache-tomcat-7.0.55/logs/catalina.out
