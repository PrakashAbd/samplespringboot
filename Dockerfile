FROM openjdk
MAINTAINER Satya Prakash <vspblues@gmail.com>
ADD target/samplespringboot-0.0.1-SNAPSHOT.jar samplespringboot-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/samplespringboot-0.0.1-SNAPSHOT.jar"]
EXPOSE 2222