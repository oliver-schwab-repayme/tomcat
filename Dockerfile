#FROM tomcat
#be sure to use the tomcat version with JRE 8
#also use the alpine version, which is much smaller than most distribution base images 
FROM tomcat:8.5.9-jre8-alpine
MAINTAINER Oliver Schwab

#override users config to add new user (deployer:deployer)
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY manager.xml /usr/local/tomcat/conf/Catalina/localhost/