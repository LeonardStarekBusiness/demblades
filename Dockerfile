FROM openjdk:11-jdk
MAINTAINER GFG author
LABEL env=production
ENV apparea /data/app
RUN mkdir -p $apparea
ADD https://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war/2.397/jenkins.war $apparea
WORKDIR $apparea
EXPOSE 8080
CMD ["java","-jar","jenkins.war"]
