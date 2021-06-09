FROM maven:3-openjdk-8-slim
ARG JAR_FILE=target/java-helloworld-2.0-jar-with-dependencies.jar
COPY ${JAR_FILE} /java-helloworld-2.0.jar
ENTRYPOINT exec java -jar /java-helloworld-2.0.jar