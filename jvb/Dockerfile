# ARG JITSI_REPO=jitsi
# ARG BASE_TAG=latest
# FROM ${JITSI_REPO}/base-java:${BASE_TAG}

# LABEL org.opencontainers.image.title="Jitsi Videobridge (jvb)"
# LABEL org.opencontainers.image.description="WebRTC compatible server designed to route video streams amongst participants in a conference."
# LABEL org.opencontainers.image.url="https://jitsi.org/jitsi-videobridge/"
# LABEL org.opencontainers.image.source="https://github.com/jitsi/docker-jitsi-meet"
# LABEL org.opencontainers.image.documentation="https://jitsi.github.io/handbook/"

# RUN apt-dpkg-wrap apt-get update && \
#     apt-dpkg-wrap apt-get install -y jitsi-videobridge2 jitsi-autoscaler-sidecar jq curl iproute2 dnsutils libpcap0.8 && \
#     apt-cleanup

# COPY rootfs/ /

# VOLUME /config

ARG JITSI_REPO=jitsi
ARG BASE_TAG=stable-9750
FROM ${JITSI_REPO}/jvb:${BASE_TAG}
ENV DOCKER_HOST_ADDRESS=${DOCKER_HOST_ADDRESS} \
    XMPP_AUTH_DOMAIN=auth.meet.rezos.com.br \
    XMPP_INTERNAL_MUC_DOMAIN=internal-muc.meet.rezos.com.br \
    XMPP_SERVER_NAME=meet.rezos.com.br \
    JVB_ADVERTISE_IPS=${DOCKER_HOST_ADDRESS}
EXPOSE 10000/udp
CMD ["/start.sh"]