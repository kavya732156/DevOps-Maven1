FROM alpine:3.17
LABEL AUTHOR="Java Home"
RUN apk add openjdk17-jre
WORKDIR /opt
ADD https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.13/bin/apache-tomcat-11.0.13.tar.gz .
RUN tar xf apache-tomcat-11.0.13.tar.gz
RUN rm -rf apache-tomcat-11.0.13.tar.gz
RUN mv apache-tomcat-11.0.13 tomcat11
COPY target/Demo1.war /opt/tomcat11/webapps
EXPOSE 8080
CMD ["/opt/tomcat11/bin/catalina.sh", "run"]
