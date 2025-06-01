FROM docker://docker.io/library/nginx:1.28.0-alpine-slim as build

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY /static /usr/share/nginx/html
COPY /media/stabilia.mp3 /usr/share/nginx/html/media/stabilia.mp3
