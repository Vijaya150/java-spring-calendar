FROM openjdk:17-jdk-slim
WORKDIR /app
COPY calendar-0.0.1-SNAPSHOT.jar /app
ENTRYPOINT ["java","-jar" ,"app.jar"]
