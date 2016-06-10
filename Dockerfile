FROM zulu-openjdk:latest


CMD ["java -jar $(find /opt/spring-boot -type f -name '*.jar' -print -quit)"]

