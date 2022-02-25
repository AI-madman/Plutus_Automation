#!/bin/sh
cd plutus
#nix-shell && sleep 20
nix build -f default.nix docs.site --extra-experimental-features nix-command && sleep 10
cd result
python3 -m http.server 8081
awhile=3
sleep $awhile && firefox http://localhost:8081/haddock/plutus-ledger-api/html/Plutus-V1-Ledger-Value.html#g:1 & 
node netservice.js 
