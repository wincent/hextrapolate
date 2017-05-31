#!/bin/sh

set -e

declare -r HOST=hex.wincent.com
declare -r BASE=/var/www/hex.wincent.com/public_html

# Upload files to staging area.
ssh $HOST mkdir -p hextrapolate
scp -r build/* $HOST:hextrapolate

# Mirror files over to final position.
ssh -t $HOST sudo rsync -va hextrapolate/ $BASE/
