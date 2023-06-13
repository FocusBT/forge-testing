to set forge: open bash and type: source /c/Users/LENOVO/.bashrc

then: forge init

to compile: forge compile

to deploy: forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

to make it more flexible just make a .env file and add PRIVATE_KEY and deploy it like

to deploy: forge script script/DeploySimpleStorage.s.sol --rpc-url $URL --broadcast --private-key $PRIVATE_KEY

just like we are using local URL to deploy our smart contract you can use different networks(sepholia, eth, polygon) URL to deploy smart contract.
