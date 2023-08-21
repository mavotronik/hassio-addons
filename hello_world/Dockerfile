ARG BUILD_FROM
FROM $BUILD_FROM

# Copy data for add-on
RUN ["ls -l"]
WORKDIR /
COPY rootfs /
VOLUME ["/run"]
