FROM --platform=linux/x86_64 eclipse-temurin:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/spring-github-actions-demo-0.0.1.jar demo.jar
ENTRYPOINT ["java","-jar","/demo.jar"]