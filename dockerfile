FROM java:8
ENV foo bar
RUN  apt-get update 
COPY src /root/helloworld/src
WORKDIR /root/helloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "HelloWorld"]
VOLUME  /home/ubuntu/javahelloworld:/www/website
