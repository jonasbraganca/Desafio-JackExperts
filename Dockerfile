FROM nginx:alpine

RUN mkdir -p /var/cache/nginx/client_temp /var/run/nginx && \
    chown -R nginx:nginx /var/cache/nginx /var/run/nginx && \
    sed -i 's|/var/run/nginx.pid|/tmp/nginx.pid|' /etc/nginx/nginx.conf

USER nginx

EXPOSE 80

