# Setup stuff so we can update our DNS


all: gitupdate build 
	echo all

build:
	docker build -t bencaron/digital-ocean-dyndns-updater .

gitupdate:
	cd vendor/Digital-Ocean-Dynamic-DNS-Updater
	git pull

gitclone:
	git clone https://github.com/bensquire/Digital-Ocean-Dynamic-DNS-Updater vendor/Digital-Ocean-Dynamic-DNS-Updater

run:
	docker run -it --rm -v bencaron/digital-ocean-dyndns-updater 
