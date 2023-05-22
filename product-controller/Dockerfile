#Start with a base image containing Java Runtime
FROM openjdk:8

#Make port 8082 of the container available to the outside world
EXPOSE 8082


ADD target/ProductController-1.0-SNAPSHOT.jar ProductController-1.0-SNAPSHOT.jar

#Run the Jar File
ENTRYPOINT ["java","-jar","/ProductController-1.0-SNAPSHOT.jar"]