# digitalocean-dyndns-updater

This is a wrapper around https://github.com/bensquire/Digital-Ocean-Dynamic-DNS-Updater 

It gives you a simple way to have a Docker container running somewhere in your network to keep a DNS record updated at DigitalOcean DNS servers.


## Preparation

Log into your DigitalOcean account and go to the API section. Get yourself an API token.

Save it preciously. Do. Not. Commit. It. Anywhere. Public.


## Starting up

There is two way to start the container:

### Docker directly

Copy config.sh.sample to config.sh. Edit it to your needs.

Start Docker with the config file:

```sh
docker run -it --rm --env-file config.sh bcaron/digitalocean-dyn-dns-updater
```

### With Docker-compose

Copy docker-compose.yml to docker-compose.yml. Edit to you needs. Start it:

```sh
docker-compose up -d 
```

## Troubleshooting

Make sure your container IS running.

```
docker ps
```

Look at the logs:

```sh
docker logs dyn-dns-updater
```


## Rebuilding the image

```sh
make build
```
