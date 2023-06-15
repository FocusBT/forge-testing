to set forge: open bash and type: source /c/Users/LENOVO/.bashrc

then: forge init

to compile: forge compile

to deploy: forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

to make it more flexible just make a .env file and add PRIVATE_KEY and deploy it like

to deploy: forge script script/DeploySimpleStorage.s.sol --rpc-url $URL --broadcast --private-key $PRIVATE_KEY

just like we are using local URL to deploy our smart contract you can use different networks(sepholia, eth, polygon) URL to deploy smart contract.

Another way to deploy smart contract is thirdweb: npx thirdweb deploy: it will automatically open a website and you can deploy your smart contract on any network you want

ONCE YOUR CODE IS DEPLOYED THERE ARE 2 WAYS TO INTRECT WITH IT EITHER YOU CAN DO IN TERMINAL OR YOU CAN MAKE SCRIPTS:

1. Using Terminal

-> To send a write transaction

`cast send <smart contract address> "store(uint256)" <input here> --rpc-url <rpc url here> --private-key <private key here> `

something like this
`cast send 0xe7f1725e7734ce288f8367e1bb143e90bb3f0512 "store(uint256)" 786 --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80`

-> To send a read transactiom

`cast call <smart contract address> "retrieve()"`

something like this
`cast call 0xe7f1725e7734ce288f8367e1bb143e90bb3f0512 "retrieve()"`

once you do that you will find value in hex so
`cast --to-base 0x0000000000000000000000000000000000000000000000000000000000000312 dec`
it will convert the value into decimal

to install any external library
`forge install smartcontractkit/chainlink-brownie-contracts@versionOfRepo --no-commit`
it will be saved in lib

check foundry.toml: I added this `remappings = ["@chainlink/contracts/=lib/chainlink-brownie-contracts/contracts/"]` it means whenever in smart contract whenever you will import `@chainlink/contracts/anyFile` it will be fetched from `chainlink-brownie-contracts/contracts/`

