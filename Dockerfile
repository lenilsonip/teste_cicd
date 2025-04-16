# Base com OpenJDK 21 e Maven
FROM maven:3.9.6-eclipse-temurin-21 as builder

# Instalando Docker e Docker Compose no container
USER root

RUN apt-get update && \
    apt-get install -y docker.io docker-compose && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

EXPOSE 8080

CMD ["/bin/bash"]
