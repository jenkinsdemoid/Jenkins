FROM openjdk:17
 
ARG ARTIFACTORY_USERNAME
ARG ARTIFACTORY_PASSWORD
 
RUN curl -u $ARTIFACTORY_USERNAME:$ARTIFACTORY_PASSWORD -A 'Edg/124.0.0.0' -o CalculateApp.war "http://localhost:8082/artifactory/generic-local/target/CalculateApp.war"
 
ENTRYPOINT ["java", "-war", "CalculateApp.war"]
