# Daox Contracts <img align="right" src="https://raw.githubusercontent.com/daox/daox-contracts/840ebd10400d1d81b6b324116f009d2154e07b07/assets/daox-logo_github%402x.png" height="34px" />

[![Build Status](https://travis-ci.org/daox/daox-contracts.svg?branch=master)](https://travis-ci.org/daox/daox-contracts)

This repo contains Solidity smart contracts to create decentralized autonomous organizations for [the Daox platform](https://platform.daox.org).

Install
-------

### Clone the repository:

```bash
git clone https://github.com/daox/daox-contracts.git
cd daox-contracts
```

### Install requirements with npm:

```bash
npm i
```

### Install truffle and ganache-cli for testing and compiling:

```bash
npm i -g truffle ganache-cli
```

Testing
-------------------
### Run all tests (will automatically run ganache-cli in the background):

```bash
npm test
```

Compile and Deploy
------------------
Compiled contracts are already stored in repository so in regular case you will not need to compile it. 
But if it is needed for some reason use instructions below

### Compile all contracts:

```bash
truffle compile
```

License
-------
All smart contracts are released under MIT.

Details
-------
For additional details you can also follow series of [How Daox Works](https://medium.com/daox/how-daox-works-part-1-a1d2a456cbe7) blogposts.

Contributors
------------
- Anton Vityazev ([GiddeonWyeth](https://github.com/GiddeonWyeth))
- Kirill Bulgakov ([bulgakovk](https://github.com/bulgakovk))
- Alex Shevlyakov ([sanchosrancho](https://github.com/sanchosrancho))
