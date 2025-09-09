FROM jitsi/web:latest
COPY ./web/config.js /defaults/config.js
EXPOSE 80 443
CMD ["apache2-foreground"]