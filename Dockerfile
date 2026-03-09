FROM eclipse-temurin:25-alpine
WORKDIR /application
COPY target/*.jar app.jar

ENV LOGGING_CONFIG=classpath:logback-nais.xml

ENTRYPOINT ["java", "-jar", "app.jar"]
