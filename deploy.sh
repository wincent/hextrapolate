#!/bin/sh

set -e

declare -r HOST=hex.wincent.com
declare -r BASE=/var/www/hex.wincent.com/public_html

# Upload files to staging area.
ssh $HOST mkdir -p hextrapolate/dist
scp index.html $HOST:hextrapolate
scp dist/bundle.js dist/bundle.js.map $HOST:hextrapolate/dist/

# Move files into final position.
ssh -t $HOST sudo mkdir -p $BASE/dist
ssh -t $HOST sudo cp hextrapolate/index.html $BASE/
ssh -t $HOST sudo cp hextrapolate/dist/bundle.js hextrapolate/dist/bundle.js.map $BASE/dist/
