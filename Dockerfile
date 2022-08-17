
FROM artifactory.rnd-hub.com:5007/rti-connext-dds:6.0.1 AS dds_builder

 

FROM maven:3.6.3-jdk-11-slim AS build

COPY src /usr/src/app/src

#COPY resources/ /usr/src/app/resources/

COPY pom.xml /usr/src/app

 

# Provide Maven access for builder docker

COPY docker-data/maven-settings.xml /usr/share/maven/conf/settings.xml

RUN mkdir -p /usr/app/dependencies

WORKDIR /usr/app/

COPY --from=build /usr/temp-folder/run-generic.jar ./run-generic.jar

COPY --from=build /usr/src/app/dependencies ./dependencies

RUN rm ./dependencies/el-api-2.2.jar

 

COPY ./consul.hcl /usr/app/consul.hcl

COPY ./docker-entrypoint.sh /usr/app/docker-entrypoint.sh

RUN chmod +x /usr/app/docker-entrypoint.sh

 

CMD [ "sh", "/usr/app/docker-entrypoint.sh" ]

 

EXPOSE 5555
