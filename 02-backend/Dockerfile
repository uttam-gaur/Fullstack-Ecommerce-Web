FROM eclipse-temurin:17-jre

WORKDIR /app

COPY ["spring-boot rest api/target/spring-boot-ecommerce-0.0.1-SNAPSHOT.jar", "app.jar"]

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]