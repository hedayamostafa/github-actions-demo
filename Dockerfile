#FROM --platform=linux/x86_64 eclipse-temurin:17-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY ./target/spring-github-actions-demo-0.0.1.jar demo.jar
#ENTRYPOINT ["java","-jar","/demo.jar"]

FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./build/libs/spring-github-actions-demo-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "spring-github-actions-demo-1.0-SNAPSHOT.jar"]