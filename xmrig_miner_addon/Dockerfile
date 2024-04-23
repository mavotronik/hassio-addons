ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    git \
    make \
    cmake \
    libstdc++ \
    gcc \
    g++ \
    libuv-dev \
    openssl-dev \
    hwloc-dev \
    linux-headers


RUN git clone https://github.com/xmrig/xmrig
  
RUN mkdir xmrig/build
RUN cd xmrig/build && cmake .. && make

# Copy data for add-on
COPY run.sh /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]