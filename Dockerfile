FROM tomcat:latest
RUN apt update
RUN apt install git
RUN apt install maven
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello