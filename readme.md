Docker Image for Factorio
==========

This is fectching the version 0.15.1 from the Factorio Website.

Place a game.zip, that is your game save to run on the server.

Create a volume for /factorio/saves, to keep your game save, the server configuration `server-settings.json` will also be saved in that director.

`docker create --name factorio -v factorio:/factorio/saves -p 34197:34197/udp factorio:latest`

