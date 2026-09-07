FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY ["spring-boot rest api/pom.xml", "./pom.xml"]

RUN mvn dependency:go-offline

COPY ["spring-boot rest api/src", "./src"]

RUN mvn clean package -DskipTests


FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=build /app/target/spring-boot-ecommerce-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
