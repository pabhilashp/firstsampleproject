FROM picoded/ubuntu-openjdk-8-jdk
VOLUME /tmp
ARG JAR_FILE=target/demo-1.0.jar
ADD ${JAR_FILE} /demo.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]
