#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
addnode=142.93.164.226:57612
addnode=142.93.164.229:57612
addnode=142.93.164.239:57612
EOF