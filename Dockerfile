FROM eclipse-temurin:21-alpine
WORKDIR /application
COPY target/*.jar app.jar

ENV LOGGING_CONFIG=classpath:logback-nais.xml

ENTRYPOINT ["java", "-jar", "app.jar"]
