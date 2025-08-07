FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY javapp/*    .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean install -DskipTests

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]


