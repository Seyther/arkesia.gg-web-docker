# Arkesia.gg running in Docker container

This project creates the docker containers to run the interactive Lost Ark map locally to serve as a quick preview. For the live site, refer to https://arkesia.gg.

## Disclaimer

Simple passwords are used in this project to support the quick preview. For live deployment, suggest to change the passwords.

## Software Prerequisites

- Docker (with docker compose plugin if not using Docker Desktop)

## How to run this image

In the project root directory, run this command:

```sh
docker compose up
```

# Credits

Giving credits to the source codes used in this docker image:

- Interactive Lost Ark map: [lmachens](https://github.com/lmachens/arkesia.gg-web)
