FROM golang:latest

LABEL maintainer="shehabalhayee82@gmial.com"

ENV DEBIAN_FRONTEND=non-interactive

RUN apt-get update && apt-get install -y curl jq git cmake g++


RUN git clone https://github.com/ameenmaali/urldedupe.git /urldedupe \
    && cd /urldedupe \
    && cmake CMakeLists.txt \
    && make \
    && cp ./urldedupe /usr/bin/
    
    
RUN mkdir /root/.gf/

RUN go install github.com/tomnomnom/unfurl@latest \
    && go install github.com/lc/gau/v2/cmd/gau@latest \
    && go install github.com/tomnomnom/gf@latest

WORKDIR /app

COPY . .

RUN cp patterns/*.json /root/.gf/

RUN chmod +x ./command.sh

ENTRYPOINT ["./command.sh"]

