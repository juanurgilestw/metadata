FROM openjdk:17-alpine

RUN apk --no-cache add ca-certificates
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub

RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-2.29-r0.apk
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.29-r0/glibc-bin-2.29-r0.apk

RUN apk add glibc-2.29-r0.apk glibc-bin-2.29-r0.apk

ADD target/metadata-service.jar metadata-service.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Xms256m", "-Xmx512m","/metadata-service.jar"]