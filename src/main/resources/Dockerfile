FROM alpine/git AS clone
WORKDIR /app

RUN git clone https://github.com/leoIlha/TrabalhoOnibus.git

FROM maven:latest AS build
WORKDIR /app

COPY --from=clone /app/TrabalhoOnibus /app

RUN mvn -f ./pom.xml clean package

FROM openjdk:18-bullseye
WORKDIR /app

COPY --from=build /app/target/TrabalhoOnibus-jar-with-dependencies.jar /app/TrabalhoOnibus.jar
COPY --from=build /app/resources /app/resources

ENTRYPOINT [ "java", "-jar", "/app/TrabalhoOnibus.jar" ]