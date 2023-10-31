FROM openjdk:17-jdk-slim-buster

EXPOSE 8080

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} spring-boot-prometheus-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "spring-boot-prometheus-0.0.1-SNAPSHOT.jar"]

