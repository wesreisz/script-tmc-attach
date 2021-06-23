FROM alpine:3.14
RUN apk update && apk add --no-cache bash

WORKDIR /scripts

RUN wget -O tmc https://tmc-cli.s3-us-west-2.amazonaws.com/tmc/0.2.1-170959eb/linux/x64/tmc && \  
    chmod +x tmc

RUN wget -O kubectl https://dl.k8s.io/release/v1.19.1/bin/linux/amd64/kubectl && \  
    chmod +x kubectl

RUN mv tmc /usr/local/bin/ && mv kubectl /usr/local/bin/ 
