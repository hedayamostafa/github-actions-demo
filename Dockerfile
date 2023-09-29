FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ./target/spring-github-actions-demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-jar","/demo.jar"]