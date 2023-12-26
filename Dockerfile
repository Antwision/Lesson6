FROM tomcat:latest
RUN apt update
RUN apt install git -y
RUN apt install maven -y
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN maven package
RUN cp hello-1.0.war $CATALINAHOME/webapps