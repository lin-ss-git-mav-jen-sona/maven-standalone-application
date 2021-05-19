FROM java:8
WORKDIR /
ADD target/maven-stanalone-application-0.0.1-SNAPSHOT*.jar  maven-stanalone-application-0.0.1-SNAPSHOT*.jar
CMD java -jar maven-stanalone-application-0.0.1-SNAPSHOT*.jar
