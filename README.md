# Touché Coulé

Objective of the project:  Implement a "Touché Coulé" (Battleship) game
in a decentralized way, on Ethereum. 



# Download the main project from: 

```bash
# With HTTPS
git clone https://github.com/ghivert/touche-coule.git
# Or with SSH
git clone git@github.com:ghivert/touche-coule.git
```

Dependencies: 

- `HardHat` is a local blockchain development, to iterate quickly and avoiding wasting Ether during development. Fortunately, you have nothing to do to install it.
- `Node.js` is used to build the frontend, Recommanded to install the lastest stable version. 
- `NPM` or `Yarn` is a package manager, to install dependencies for your frontend development. Yarn is recommended.
- `Metamask` is a in-browser utility to interact with decentralized applications.



# Installation

Install the dependencies.
To install whatever with npm or yarn  we have to use sudo :

$$ sudo yarn


Run the complete project.

$$ sudo yarn dev


to test hardhat is working: 
$$ npx hardhat 


# Subject

Implement a Touché Coulé from scratch in Solidity. The game is running into a contract by its own. Your job is to create an agent (i.e. a smart contract, i.e. an AI) to play the game. The interface of the agent is given in the sources.

The idea of the game is to fight in a free for all style (every players will play in the same time) with ships. Each player have two ships, of size 1. At the beginning of the game, you're placing your ships on a grid (50x50). Every turn, your ships will be able to fire once. Your goal is to destroy all the opponents ships. In a second step, your ships will be able to talk to each other, and potentially to do some diplomacy with other ships.

# Smart Contract

- Create your ship by inheriting the base contract.
- The contract should override all the functions in the `Ship.sol` contract.
- `place` is the first function called by the contract after registering the ship. It should returns the place of the ship.
- `update` is called after the ship is placed on the board. For some implementation reasons, the place can, in some times, not be given. You can use that information, or not.
- Finally, `fire` is run at each turn, and should try to touch a ship by returning a position (x, y).
- Deploy the contract with a proper deployment. 
- Register the ship on the Main contract. 
- Do all the same steps with a second ship and a second player. 
- Test your implementation with the turn function. 

Pro tip: you can automate the ship deployment and registering with the deployments. 
