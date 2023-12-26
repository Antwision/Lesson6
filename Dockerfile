FROM tomcat:latest
RUN apt update
RUN apt install git
RUN apt install maven