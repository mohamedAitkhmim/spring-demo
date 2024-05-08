FROM jelastic/maven:3.9.5-openjdk-21 AS MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn package -DskipTests=false

FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/*.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
