FROM java:8
WORKDIR /
ADD target/maven-stanalone-application-0.0.1-SNAPSHOT*.jar  /src/maven-stanalone-application-0.0.1-SNAPSHOT*.jar
ENTRYPOINT ["bin/bash", "-c", java -jar maven-stanalone-application-0.0.1-SNAPSHOT*.jar]
