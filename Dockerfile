FROM tomcat:9.0
#set lables
LABEL maintainer="adityaaanand5700@gmail.com"
LABEL name="Adityaa Anand"
LABEL email="adityaaanand5700@gmail.com"

WORKDIR /usr/local/tomcat/webapps

#Install packeges
RUN apt-get update
RUN apt install net-tools
RUN apt-get install telnet
RUN apt-get install curl
RUN apt-get -y install vim

# Get the sample.war 
RUN wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war

WORKDIR /usr/local/tomcat/bin

CMD ["catalina.sh", "run"]

#Login Directory
WORKDIR /usr/local/tomcat/webapps

ENV role=app
ENV env=dev
ENV name=AdityaaAnand

EXPOSE 8080
