# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jre-slim

# Set the working directory in the container
WORKDIR /

# Copy the project files to the working directory
COPY . .

# Build the project
RUN ./mvnw clean package -DskipTests

# Expose the port the application runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/banking-portal-api-0.0.1-SNAPSHOT.jar"]
