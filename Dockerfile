# Pull base image 

From tomcat:8-jre8 



# Maintainer 

MAINTAINER "sachinsharm_a@hcl.com" 

COPY webapp/target/*.war /usr/local/tomcat/webapps

RUN apt-get update && apt-get install -y vim

EXPOSE 8383

CMD ["/usr/local/tomcat/bin/startup.sh", "run"]

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
