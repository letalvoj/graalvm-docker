FROM debian:stretch-slim

ENV GRAAL_VERSION=1.0.0-rc2

RUN apt-get update && \
    apt-get install -y wget gcc libz-dev && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/oracle/graal/releases/download/vm-${GRAAL_VERSION}/graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz
RUN tar -xvzf graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz && \
    rm graalvm-ce-${GRAAL_VERSION}-linux-amd64.tar.gz

ENV PATH=/graalvm-ce-${GRAAL_VERSION}/bin:$PATH
