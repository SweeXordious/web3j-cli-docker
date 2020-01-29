FROM ubuntu  AS build

RUN apt-get update && apt-get install -y wget curl

RUN web3j_version=$(curl https://internal.services.web3labs.com/api/versions/latest)  && wget "https://github.com/web3j/web3j-cli/releases/download/v${web3j_version}/web3j-${web3j_version}.tar" && tar --strip-components 1 -xvf "web3j-${web3j_version}.tar" -C  "/opt/"

FROM openjdk:11

COPY --from=build /opt /opt

RUN apt-get update && apt-get install -y gradle

RUN /opt/bin/web3j new -n test -o /tmp -p testp  && rm -rf /tmp/test

ENTRYPOINT ["/opt/bin/web3j"]
