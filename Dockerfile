FROM debian:jessie

RUN apt-get update && apt-get install -y nginx

COPY index.html /var/www/index/index.html

CMD ["nginx","-g","daemon off;"]
