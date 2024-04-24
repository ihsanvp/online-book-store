FROM adoptopenjdk/maven-openjdk11:latest
WORKDIR /app
COPY . /app
EXPOSE 3000
RUN mvn clean install
CMD java -jar target/dependency/webapp-runner.jar --port 3000 target/*.war