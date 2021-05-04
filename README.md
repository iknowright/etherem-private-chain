# Ethereum Private Chain

Multiple node private chain setup with clique consensus


## Environment
### Geth
For building private chain
| tool | version |
| --- | --- |
| Geth | 1.10.2-stable |
| Architecture | arm64 |
| Go  Version| go1.16.3 |
| Operating System| darwin |

### Truffle
For developing smart contract
| tool | version |
| --- | --- |
| Truffle | v5.3.3 |
| Solidity | v0.5.16 |
| Node | v12.21.0 |
| Web3.js | v1.3.5 |

## Project Structure
- boot1 - node1
- boot2 - node2
- nootnode - bootnode
- metacoin - simple truffle project by truffle team

## How to start the private chain
- `make run`
