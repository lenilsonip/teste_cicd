# Use a imagem do OpenJDK 21 como base
FROM openjdk:21-jdk-slim

# Adicione o arquivo JAR da sua aplicação
COPY target/teste-cicd-0.0.1-SNAPSHOT.jar app.jar

# Defina a variável de ambiente para a porta
ENV SERVER_PORT=8080

# Exponha a porta da aplicação
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "/app.jar"]
