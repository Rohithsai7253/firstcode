# Use a base image with Java and necessary tools
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the source code
COPY src/ /app/src/

# Build the Java application
RUN javac src/Main.java

# Expose the port (optional, if you're running a web server)
# EXPOSE 8080

# Command to run the application
CMD ["java", "Main"]
