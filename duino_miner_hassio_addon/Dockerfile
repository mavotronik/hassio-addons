ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3 \
    py3-pip \
    py3-requests


# Copy data for add-on
COPY run.sh /
COPY miner.py /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]