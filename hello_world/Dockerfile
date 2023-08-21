ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on

WORKDIR /
COPY rootfs /
RUN ["ls -l /"]
VOLUME ["/run"]
