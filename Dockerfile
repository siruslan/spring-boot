ROM azul/zulu-openjdk:latest

RUN apt-get install -y wget

ENV APP_DIR=/opt/spring-boot
ENV APP_PKG=http://164.132.8.84:8000/target/gs-spring-boot-0.1.0.jar
ENV APP_NAME=spring-boot.jar

RUN mkdir -p $APP_DIR
RUN cd $APP_DIR && wget $APP_PKG -O $APP_NAME

ADD /bin/start.sh /start.sh
RUN chmod +x /start.sh

CMD["/start.sh"]

