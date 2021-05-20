FROM java:8
VOLUME /tmp
ADD build/libs/springredisdockertest.jar springredisdockertest.jar
RUN bash -c 'touch /springredisdockertest.jar'
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springredisdockertest.jar"]
