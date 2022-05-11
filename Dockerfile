FROM openjdk:8
WORKDIR /app
ADD build/libs/MHBA-0.0.1-SNAPSHOT.jar .
ADD build/libs/log4j.properties .
EXPOSE 8081
ENTRYPOINT ["java","-jar","MHBA-0.0.1-SNAPSHOT.jar"]
