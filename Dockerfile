FROM ubuntu
ADD  /var/lib/jenkins/workspace/freestyle_test/target/rahul-1.0-SNAPSHOT.jar /opt/rahul-1.0-SNAPSHOT.jar
RUN apt-get install default-jre -y && apt-get install default-jdk -y && java -jar /opt/rahul-1.0-SNAPSHOT.jar