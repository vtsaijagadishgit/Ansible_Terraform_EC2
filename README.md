# Spring Boot Demo App

Note to myself :) Keep this repository for VZ demo-app. Do not remove the repository. 

This repository is used to test the application that is being deployed by https://github.com/ltutar/playbook-awx-artifactory-download-and-deploy




The project has been adjusted for demo purposes and certain files and folders have been removed.

# Build
## Maven
Validate

```bash
./mvnw clean validate
```

Compile

```bash
./mvnw clean compile
```

Test and create a report

```bash
./mvnw surefire-report:report
```

Build

```bash
./mvnw clean install spring-boot:repackage
```

Build a specific version

```bash
./mvnw versions:set -DnewVersion=1.0.0
./mvnw clean install spring-boot:repackage
```

## Running the application as jar

```bash
java -jar ./target/cdaas-demo-app-1.0.0.jar
```

## Docker
Build image

```bash
docker build -t cdaas-demo-app:1.0.0 .
```

## Running the application as docker container

```bash
docker run -d cdaas-demo-app:1.0.0
```

# Application endpoints

Replace localhost accordingly.

- Main application: http://localhost:8080/
- Actuator endpoint: http://localhost:8080/actuator
- Health: http://localhost:8080/actuator/health

![<img src="images/java-end-result.png" height="400">](images/java-end-result.png)

