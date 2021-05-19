FROM openjdk:8
COPY target/maven-stanalone-application-0.0.1-SNAPSHOT.jar /src/maven-stanalone-application-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","/src/maven-stanalone-application-0.0.1-SNAPSHOT.jar"
