# ARG JITSI_REPO=jitsi
# ARG BASE_TAG=latest
# FROM ${JITSI_REPO}/base-java:${BASE_TAG}

# LABEL org.opencontainers.image.title="Jitsi Conference Focus (jicofo)"
# LABEL org.opencontainers.image.description="Server-side focus component that manages media sessions and acts as load balancer."
# LABEL org.opencontainers.image.url="https://github.com/jitsi/jicofo"
# LABEL org.opencontainers.image.source="https://github.com/jitsi/docker-jitsi-meet"
# LABEL org.opencontainers.image.documentation="https://jitsi.github.io/handbook/"

# RUN apt-dpkg-wrap apt-get update && \
#     apt-dpkg-wrap apt-get install -y jicofo && \
#     apt-cleanup

# COPY rootfs/ /

# VOLUME /config

ARG JITSI_REPO=jitsi
ARG BASE_TAG=stable-9750
FROM ${JITSI_REPO}/jicofo:${BASE_TAG}
ENV XMPP_DOMAIN=meet.rezos.com.br \
    XMPP_AUTH_DOMAIN=auth.meet.rezos.com.br \
    XMPP_MUC_DOMAIN=muc.meet.rezos.com.br \
    JICOFO_AUTH_USER=focus \
    JICOFO_AUTH_PASSWORD=${JICOFO_AUTH_PASSWORD}
CMD ["/start.sh"]