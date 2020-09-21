FROM xiajunyi/centos7-java8-node10:v1.0.0

MAINTAINER xiajunyi

RUN echo '开始命令'

RUN sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN sudo mkdir -p /pdftools

WORKDIR /pdftools

COPY /target/h5-transfer-pdf-1.0.0-lite.zip .

RUN sudo unzip h5-transfer-pdf-1.0.0-lite.zip && sudo mv h5-transfer-pdf-1.0.0/* . 

EXPOSE 8084

CMD sudo java -Djava.security.egd=file:/dev/./urandom -jar boot/h5-transfer-pdf-1.0.0.jar
