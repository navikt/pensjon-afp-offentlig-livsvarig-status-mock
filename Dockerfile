FROM europe-north1-docker.pkg.dev/cgr-nav/pull-through/nav.no/jre:openjdk-27
WORKDIR /app
COPY target/*.jar app.jar

ENV LOGGING_CONFIG=classpath:logback-nais.xml

CMD ["-jar", "app.jar"]
