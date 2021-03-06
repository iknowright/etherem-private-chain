# start up nodes
sudo bootnode --nodekey bootdir/boot.key &
sleep 3
sudo geth --datadir ./boot1 --port 30321 --networkid 2602 --http --http.addr 0.0.0.0 --http.api net,web3,eth,personal --http.port 8110 --http.corsdomain "*" --bootnodes "enode://5af0e07c2af006c83d52c2f90f5aaf170e0ffb01cd61fc9d7fabfb0bd7a240d7aa8d301e7549b4534bb922c43c54349d7b945b478a89220b4951b0999fded52e@127.0.0.1:0?discport=30301"  --unlock "0xe2F64533D562E1999c092B0f1857E14E7502e101" --allow-insecure-unlock --password boot1/password.txt --syncmode "full" &
sudo geth --datadir ./boot2 --port 30322 --networkid 2602 --http --http.addr 0.0.0.0 --http.api net,web3,eth,personal --http.port 8111 --http.corsdomain "*" --bootnodes "enode://5af0e07c2af006c83d52c2f90f5aaf170e0ffb01cd61fc9d7fabfb0bd7a240d7aa8d301e7549b4534bb922c43c54349d7b945b478a89220b4951b0999fded52e@127.0.0.1:0?discport=30301"  --unlock "0x8E655b1Ab435d3f3F95AFd3Dc5c2ff6f39ac87d0" --allow-insecure-unlock --password boot2/password.txt --syncmode "full"
