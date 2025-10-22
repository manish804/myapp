# Use an official Java 17 runtime
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy your jar file into the container
COPY employee-management-0.0.1-SNAPSHOT.jar app.jar

# Railway uses the PORT env var; ensure the app listens on it
ENV PORT=8080
EXPOSE 8080

# Start the app
CMD ["java", "-jar", "app.jar"]
