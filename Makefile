# Setup stuff so we can update our DNS


all: gitupdate build 
	echo all

build:
	docker build -t bcaron/digitalocean-dyn-dns-updater .

gitupdate:
	cd vendor/Digital-Ocean-Dynamic-DNS-Updater
	git pull

gitclone:
	git clone https://github.com/bensquire/Digital-Ocean-Dynamic-DNS-Updater vendor/Digital-Ocean-Dynamic-DNS-Updater

test:
	docker run -it --rm bcaron/digitalocean-dyn-dns-updater 
