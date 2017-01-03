# Mention truffle:migrate/compile  & gas / explain ether and SIMPLES COMPS COST 20K gas .. standard token contract by etherium foundation
sol mapping() from address to unit iss intialledd from 0 , 0
usaally hashtable is diffrent it
you cant loop through it
cuz it is deployed on live network

https://live.ether.camp/




Goal meta coain on top of ether

rpc in testing gives you fake amount if ether
Simple Dapp in Meteor:

- Separate  ethereum logic from you dapp
- Receive Logs from contracts
- Call contract funcitons

## Getting started

Start a geth node on a testnet:

    $ geth --rpccorsdomain "*" --rpc --networkid 8545 --minerthreads "1" --datadir <somePath>/testChain --mine

Add `--unlock <your account>` if you want to use your account to setNumbers in the contract.


start this on your own you need to deploy the contract code from inside `client/lib/contract.js` first and replace the address in line 4 (`GuessNumberInstance = GuessNumber.at(...)`).




### To deploy the contract on your own call:
```js
var contractInstance = GuessNumber.new({from: web3.eth.accounts[0], gas: 200000, data: contractCode});
```
### To get the address use:
```js
contractInstance.address;
```



### Set the number use----
```js
GuessNumberInstance.setNumber(10, {from: <your account>, gas: 50000})
```


### To send cash to the contract use:
```js
web3.eth.sendTransaction({from: web3.eth.accounts[0], to: <contract address> , value: 123000000000})
```
