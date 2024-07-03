# First stage: build the application
FROM openjdk:17-jdk-slim as builder
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

# Second stage: run the application
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/api-1.0.0.jar /app/api-1.0.0.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/api-1.0.0.jar"]