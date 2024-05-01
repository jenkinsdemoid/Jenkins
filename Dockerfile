# Use a base image suitable for your application runtime, for example, OpenJDK for Java applications
FROM openjdk:17-jdk

# Set the working directory inside the container
WORKDIR /app

# Download the artifact from JFrog Artifactory 
RUN wget -O CalculateApp.war "http://localhost:8081/artifactory/generic-local/target/CalculateApp.war" 

# Define the command to run your application when the container starts 
CMD ["java", "-war", "CalculateApp.war"]
