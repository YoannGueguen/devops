FROM debian:jessie

RUN apt-get update && apt-get install -y nginx

COPY conf/nginx.conf /etc/nginx/sites-available/default
COPY src/ /var/www/devops/

CMD ["nginx","-g","daemon off;"]
