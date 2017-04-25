FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install xz-utils -y

RUN wget https://www.factorio.com/get-download/0.15.1/headless/linux64
RUN tar -xf linux64
RUN mkdir /factorio/saves
RUN cp /factorio/data/server-settings.example.json /factorio/saves/server-settings.json
RUN rm linux64
ADD game.zip /factorio/saves/game.zip

ENTRYPOINT ["/factorio/bin/x64/factorio", "--start-server", "/factorio/saves/game.zip", "--server-settings", "/factorio/saves/server-settings.json"]
