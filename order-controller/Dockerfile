#Start with a base image containing Java Runtime
FROM openjdk:8-jdk-alpine

#Make port 8080 of the container available to the outside world
EXPOSE 8080


ADD target/OrderController-1.0-SNAPSHOT.jar OrderController-1.0-SNAPSHOT.jar

#Run the Jar File
ENTRYPOINT ["java","-jar","/OrderController-1.0-SNAPSHOT.jar"]