FROM jitsi/web:web-1.0.8801-1
COPY ./web/config.js /defaults/config.js
EXPOSE 80 443
CMD ["apache2-foreground"]