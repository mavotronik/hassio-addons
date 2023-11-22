#!/usr/bin/with-contenv bashio
 
echo "Hassio XMRig-Miner"

MINING_POOL=$(bashio::config 'mining_pool')
WALLET=$(bashio::config 'wallet')
PASSWORD=$(bashio::config 'password')
THREADS=$(bashio::config 'threads')
MODE=$(bashio::config 'mode')

cd xmrig/build
echo $MODE
touch config.json
./xmrig -o $MINING_POOL -u $WALLET -p $PASSWORD -t $THREADS
