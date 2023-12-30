FROM tomcat:10-jdk11
RUN apt update && apt install \
    git \
    maven -y \
    &&  rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/src/app/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp ./target/hello-1.0.war $CATALINA_HOME/webapps