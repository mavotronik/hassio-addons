#!/usr/bin/with-contenv bashio
 
echo "Hassio XMRig-Miner"

MINING_POOL=$(bashio::config 'mining_pool')
WALLET=$(bashio::config 'wallet')
PASSWORD=$(bashio::config 'password')
COIN=(bashio::config 'coin')
ALGO=(bashio::config 'algo')
THREADS=$(bashio::config 'threads')
MODE=$(bashio::config 'mode')

cd xmrig/build
echo $MODE
touch config.json
./xmrig -o $MINING_POOL -u $WALLET -p $PASSWORD --coin $COIN -a $ALGO -t $THREADS --randomx-mode $MODE
