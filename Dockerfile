FROM ubuntu:16.04
LABEL maintainer "jordsti <jord52@gmail.com>"
EXPOSE 34197/udp
EXPOSE 27015/tcp

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install xz-utils -y

RUN wget https://www.factorio.com/get-download/0.15.7/headless/linux64
RUN tar -xvf linux64
RUN mkdir /factorio/saves
RUN cp /factorio/data/server-settings.example.json /factorio/saves/server-settings.json
RUN rm linux64
ADD game.zip /factorio/saves/game.zip

ENTRYPOINT ["/factorio/bin/x64/factorio", "--start-server", "/factorio/saves/game.zip", "--server-settings", "/factorio/saves/server-settings.json"]
