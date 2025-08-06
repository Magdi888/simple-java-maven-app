FROM gcr.io/distroless/java21-debian12	

WORKDIR /app
COPY target/my-app-1.0-SNAPSHOT.jar my-app-1.0-SNAPSHOT.jar

CMD [ "java", "-jar", "my-app-1.0-SNAPSHOT.jar" ]
