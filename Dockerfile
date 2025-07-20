FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/calender.jar /app
ENTRYPOINT ["java","-jar" ,"app.jar"]
