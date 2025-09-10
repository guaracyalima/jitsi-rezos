# # ARG JITSI_REPO=jitsi
# # ARG BASE_TAG=latest
# # FROM ${JITSI_REPO}/base:${BASE_TAG}

# # LABEL org.opencontainers.image.title="Jitsi Meet"
# # LABEL org.opencontainers.image.description="WebRTC compatible JavaScript application that uses Jitsi Videobridge to provide high quality, scalable video conferences."
# # LABEL org.opencontainers.image.url="https://jitsi.org/jitsi-meet/"
# # LABEL org.opencontainers.image.source="https://github.com/jitsi/docker-jitsi-meet"
# # LABEL org.opencontainers.image.documentation="https://jitsi.github.io/handbook/"

# # ADD https://raw.githubusercontent.com/acmesh-official/acme.sh/3.0.7/acme.sh /opt
# # COPY rootfs/ /

# # RUN apt-dpkg-wrap apt-get update && \
# #     apt-dpkg-wrap apt-get install -y dnsutils cron nginx-extras jitsi-meet-web socat curl jq && \
# #     mv /usr/share/jitsi-meet/interface_config.js /defaults && \
# #     rm -f /etc/nginx/conf.d/default.conf && \
# #     apt-cleanup

# # EXPOSE 80 443

# # VOLUME ["/config", "/usr/share/jitsi-meet/transcripts"]
# # CMD ["/start.sh"]
# ARG JITSI_REPO=jitsi
# ARG BASE_TAG=latest
# FROM ${JITSI_REPO}/base:${BASE_TAG}
# LABEL org.opencontainers.image.title="Jitsi Meet"
# LABEL org.opencontainers.image.description="WebRTC compatible JavaScript application that uses Jitsi Videobridge to provide high quality, scalable video conferences."
# LABEL org.opencontainers.image.url="https://jitsi.org/jitsi-meet/"
# LABEL org.opencontainers.image.source="https://github.com/jitsi/docker-jitsi-meet"
# LABEL org.opencontainers.image.documentation="https://jitsi.github.io/handbook/"
# ADD https://raw.githubusercontent.com/acmesh-official/acme.sh/3.0.7/acme.sh /opt
# COPY rootfs/ /
# COPY config.js /defaults/config.js
# RUN apt-dpkg-wrap apt-get update && \
#     apt-dpkg-wrap apt-get install -y dnsutils cron nginx-extras jitsi-meet-web socat curl jq && \
#     mv /usr/share/jitsi-meet/interface_config.js /defaults && \
#     rm -f /etc/nginx/conf.d/default.conf && \
#     apt-cleanup
# ENV ENABLE_AUTH=1 \
#     ENABLE_GUESTS=1 \
#     PUBLIC_URL=https://meet.rezos.com.br \
#     XMPP_DOMAIN=meet.rezos.com.br \
#     XMPP_AUTH_DOMAIN=auth.meet.rezos.com.br \
#     XMPP_GUEST_DOMAIN=guest.meet.rezos.com.br \
#     XMPP_MUC_DOMAIN=muc.meet.rezos.com.br \
#     JWT_APP_ID=rezo_app \
#     JWT_APP_SECRET=${JITSI_SECRET} \
#     ENABLE_HTTP_REDIRECT=1
# EXPOSE 80 443
# VOLUME ["/config", "/usr/share/jitsi-meet/transcripts"]
# CMD ["/start.sh"]
ARG JITSI_REPO=jitsi
ARG BASE_TAG=stable-9750
FROM ${JITSI_REPO}/base:${BASE_TAG}
LABEL org.opencontainers.image.title="Jitsi Meet"
LABEL org.opencontainers.image.description="WebRTC compatible JavaScript application that uses Jitsi Videobridge to provide high quality, scalable video conferences."
LABEL org.opencontainers.image.url="https://jitsi.org/jitsi-meet/"
LABEL org.opencontainers.image.source="https://github.com/jitsi/docker-jitsi-meet"
LABEL org.opencontainers.image.documentation="https://jitsi.github.io/handbook/"
ADD https://raw.githubusercontent.com/acmesh-official/acme.sh/3.0.7/acme.sh /opt
COPY rootfs/ /
COPY config.js /defaults/config.js
RUN apt-dpkg-wrap apt-get update && \
    apt-dpkg-wrap apt-get install -y dnsutils cron nginx-extras jitsi-meet-web socat curl jq && \
    mv /usr/share/jitsi-meet/interface_config.js /defaults && \
    rm -f /etc/nginx/conf.d/default.conf && \
    apt-cleanup
ENV ENABLE_AUTH=1 \
    ENABLE_GUESTS=1 \
    PUBLIC_URL=https://meet.rezos.com.br \
    XMPP_DOMAIN=meet.rezos.com.br \
    XMPP_AUTH_DOMAIN=auth.meet.rezos.com.br \
    XMPP_GUEST_DOMAIN=guest.meet.rezos.com.br \
    XMPP_MUC_DOMAIN=muc.meet.rezos.com.br \
    JWT_APP_ID=rezo_app \
    JWT_APP_SECRET=${JITSI_SECRET} \
    ENABLE_HTTP_REDIRECT=1
EXPOSE 80 443
CMD ["/start.sh"]