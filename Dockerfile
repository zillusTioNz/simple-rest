# Use official base image of Java Runtime
FROM openjdk:8-jdk-alpine

# Set volume point to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside container
EXPOSE 8080

RUN mkdir -p /usr/src/app
COPY ./target/simple-rest-0.0.1-SNAPSHOT.jar /usr/src/app

WORKDIR /usr/src/app

# Run the JAR file
ENTRYPOINT exec java $JAVA_OPTS -jar simple-rest-0.0.1-SNAPSHOT.jar $JAVA_CONFIGS