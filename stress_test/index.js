import Web3 from 'web3';

const web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:8110"));
const addresses = Array.from({ length: 255 }, (_, i) => i.toString(16).padStart(40, "0"))
const test = () => {
    console.log("stress test started")
    const sender_address = "0xe2f64533d562e1999c092b0f1857e14e7502e101"
    const sender_password = "netdb2602"
    Promise.resolve()
        .then((_) => {
            // unlock an account
            return web3.eth.personal.unlockAccount(sender_address, sender_password)
        })
        .then(() => {
            // give away ethers
            console.log("addresses count: ", addresses.length)
            // promise sequence
            return new Promise((resolve, reject) => {
                let sequence = Promise.resolve()
                for (let idx = 0; idx < 1000; idx++) {
                    const receiver = addresses[idx % 255]
                    sequence = sequence.then(() => {
                        // transfer ether
                        const params = {
                            from: sender_address,
                            to: receiver,
                            value: 1,
                        }
                        // return web3.eth.sendTransaction(params)
                        web3.eth.sendTransaction(params)
                    })
                        .then((results) => {
                            console.log("results: ", results)
                            if (idx === (addresses.length - 1)) {
                                resolve()
                            } else {
                                return "OK"
                            }
                        })
                        .catch((err) => {
                            console.log("err: ", err)
                            if (idx === (addresses.length - 1)) {
                                resolve()
                            } else {
                                return "NG"
                            }
                        })
                }
            })
        })
        .then(() => {
            console.log("stress test ended")
        })
        .catch((err) => {
            console.log("err: ", err)
        })
}

test();
