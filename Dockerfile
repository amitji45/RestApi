
FROM maven:3.8.4-openjdk-17-slim AS build
# Set the working directory in the container
WORKDIR /app
# Copy the pom.xml and the project files to the container
COPY pom.xml .
COPY src ./src
# Build the application using Maven
RUN mvn clean package -DskipTests
# Use an official OpenJDK image as the base image
FROM openjdk:11-jre-slim
# Copy the built JAR file from the previous stage to the container
COPY target/*.jar app.jar
# Set the command to run the application
CMD ["java", "-jar", "app.jar"]

EXPOSE 9595
