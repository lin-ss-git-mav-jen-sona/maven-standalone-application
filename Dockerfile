FROM java:8
WORKDIR /
ADD maven-stanalone-application-0.0.1-SNAPSHOT*.jar maven-stanalone-application.jar
EXPOSE 8080
CMD java -jar maven-stanalone-application-0.0.1-SNAPSHOT*.jar
