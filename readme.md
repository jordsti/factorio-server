Dockerfile for Factorio
==========

This is fetching the version 0.15.1 from the Factorio Website.

Place a game.zip in that folder, that is your game save to run on the server, it will be copied to /factorio/saves

Create a volume for /factorio/saves, to keep your game save, the server configuration `server-settings.json` will also be saved in that directory.

`docker create --name factorio -v factorio:/factorio/saves -p 34197:34197/udp factorio:latest`



