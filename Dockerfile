FROM maven:3.9.9-eclipse-temurin-21-noble

WORKDIR /app

COPY pom.xml pom.xml

RUN mvn install -DskipTests=true

COPY src src

RUN mvn package

CMD [ "java", "-jar", "target/my-app-1.0-SNAPSHOT.jar" ]
