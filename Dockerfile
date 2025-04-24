# Etapa de build
FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Etapa final (somente o JAR no container final)
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=builder /app/target/teste-cicd-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
