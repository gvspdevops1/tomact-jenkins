FROM ubuntu:latest
RUN mkdir /var/tomcat
RUN apt update
RUN apt install openjdk-11-jdk -y
WORKDIR /var/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz .
RUN tar -xvzf apache-tomcat-10.0.27.tar.gz
RUN mv apache-tomcat-10.0.27/* /var/tomcat
COPY target/cangk-1.1-RELEASE.war webapps
EXPOSE 8080
CMD ["/var/tomcat/bin/catalina.sh", "run"]



