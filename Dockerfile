FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install wget -y

RUN wget https://www.factorio.com/get-download/0.14.22/headless/linux64
RUN tar -xzvf linux64
RUN mkdir /factorio/saves
RUN cp /factorio/data/server-settings.example.json /factorio/saves/server-settings.json

ADD game.zip /factorio/saves/game.zip

ENTRYPOINT ["/factorio/bin/x64/factorio", "--start-server", "/factorio/saves/game.zip", "--server-settings", "/factorio/saves/server-settings.json"]