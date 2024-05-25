#!/usr/bin/with-contenv bashio
 
echo "Hassio Duco-Miner."
echo "Based on MineCryptoOnWifiRouter by BastelPichi  "
echo ""

USERNAME=$(bashio::config 'username')
MINING_KEY=$(bashio::config 'mining_key')

echo "Username is: " $USERNAME
echo "Mining key is: " $MINING_KEY

echo "Run Miner.py . . ."
python3 miner.py $USERNAME $MINING_KEY
