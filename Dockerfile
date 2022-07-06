FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/ssas.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/ssas

COPY ssas.sh /usr/bin/ssas.sh
RUN chmod +x /usr/bin/ssas.sh
COPY target/ssas.jar /usr/share/ssas/ssas.jar