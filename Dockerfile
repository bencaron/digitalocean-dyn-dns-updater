FROM python:3-alpine

WORKDIR /usr/src/app
VOLUME ["/config"]

COPY vendor/Digital-Ocean-Dynamic-DNS-Updater/updater.py ./
COPY loop.sh ./

CMD ["sh", "./loop.sh"]
