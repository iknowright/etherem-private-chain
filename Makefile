.PHONY: clean init run

init:
	sudo geth --datadir ./boot1 init ./boot1/genesis.json
	sudo geth --datadir ./boot2 init ./boot2/genesis.json

run:
	sudo sh node_run.sh

clean:
	sudo rm -rf ./boot1/geth
	sudo rm -rf ./boot2/geth
	sudo killall bootnode
