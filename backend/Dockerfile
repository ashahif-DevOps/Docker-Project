FROM maven:3.9.16-eclipse-temurin-17 AS backend_builder
WORKDIR /workspace
COPY pom.xml ./
COPY src ./src
RUN mvn -B -DskipTests clean package

FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
COPY --from=backend_builder /workspace/target/*.jar app.jar
EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=5s --start-period=45s --retries=3 \
  CMD curl -fsS http://localhost:8080/api/profile >/dev/null || exit 1
ENTRYPOINT ["java", "-jar", "app.jar"]

