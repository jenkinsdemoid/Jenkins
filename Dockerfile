ROM tomcat:10.1-jdk17-openjdk
EXPOSE 8080
ARG ARTIFACTORY_USERNAME
ARG ARTIFACTORY_PASSWORD
RUN curl -fL -u $ARTIFACTORY_USERNAME:$ARTIFACTORY_PASSWORD -o /usr/local/tomcat/webapps/CalculateApp.war "http://172.17.0.1:8082/artifactory/generic-local/target/CalculateApp.war"
