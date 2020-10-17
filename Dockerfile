FROM openjdk:8-jre-alpine

RUN mkdir -p ~/akka-http

WORKDIR ~/akka-http

COPY ./target/scala-2.11/akka-http-helloworld_2.11-1.0.jar ./

ENTRYPOINT ["java","-jar", "akka-http-helloworld_2.11-1.0.jar"]

EXPOSE 8090

