FROM openjdk:jre
VOLUME /tmp
WORKDIR /data
ONBUILD ADD app.jar app.jar
ONBUILD RUN bash -c 'touch app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
EXPOSE 8080
