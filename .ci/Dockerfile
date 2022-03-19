FROM nginx:latest

COPY book /usr/share/nginx/html/
COPY .ci/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80