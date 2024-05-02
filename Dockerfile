FROM openjdk:17
 
ARG ARTIFACTORY_USERNAME
ARG ARTIFACTORY_PASSWORD
 
RUN curl -u $ARTIFACTORY_USERNAME:$ARTIFACTORY_PASSWORD -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0' -o CalculateApp.war "http://localhost:8082/artifactory/generic-local/target/CalculateApp.war"
 
ENTRYPOINT ["java", "-war", "CalculateApp.war"]
