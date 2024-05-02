FROM openjdk:17
 
ARG ARTIFACTORY_USERNAME
ARG ARTIFACTORY_PASSWORD
 
RUN curl -fL -u $ARTIFACTORY_USERNAME:$ARTIFACTORY_PASSWORD -o CalculateApp.war "http://172.17.0.1:8082/artifactory/generic-local/target/CalculateApp.war"
 
ENTRYPOINT ["java", "-war", "CalculateApp.war"]
