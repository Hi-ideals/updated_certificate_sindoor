FROM openjdk:8 AS build
WORKDIR /app
RUN wget https://github.com/grails/grails-core/releases/download/v2.4.5/grails-2.4.5.zip \
    && unzip grails-2.4.5.zip \
    && mv grails-2.4.5 /opt/grails
ENV GRAILS_HOME=/opt/grails
ENV PATH="$GRAILS_HOME/bin:$PATH"
COPY ./Sindoor_Rakshak_Run_2025_Final /app
RUN grails clean --non-interactive && \
    grails war --non-interactive



FROM tomcat:9.0.82-jdk8-temurin
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf ROOT*
COPY --from=build /app/target/*.war ROOT.war
RUN wget -O mysql-connector-java-5.1.29.tar.gz https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.29.tar.gz && \
    tar -xzvf mysql-connector-java-5.1.29.tar.gz && \
    mv mysql-connector-java-5.1.29/mysql-connector-java-5.1.29-bin.jar /usr/local/tomcat/lib/ && \
    rm -rf mysql-connector-java-5.1.29 mysql-connector-java-5.1.29.tar.gz
RUN apt-get update && \
    apt-get install -y default-mysql-client
ENV DB_HOST=db \
    DB_PORT=3306 \
    DB_NAME=db_sindoorrakshak \
    DB_USER=root \
    DB_PASSWORD=mysql123
EXPOSE 8080
