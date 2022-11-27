// SPDX-License-Identifier: MIT

pragma solidity ^0.8;
import './Ship.sol';
import 'hardhat/console.sol';

contract ChildShip is Ship
{
  uint nextPos;
  uint height;
  uint width;
  uint posShip;
  //address owner;
  address player_addr;
  uint[] adverpos;
  uint counter = 0;

  constructor(address o){
    player_addr = o;
    nextPos = 49;
  }



  function random() private returns (uint){
    counter += 1;
    return uint(keccak256(abi.encode(counter)));
  }



  function update(uint h, uint w) public  override(Ship)
  {
    posShip = h + w * width;

  }

  function fire() public override(Ship) returns (uint, uint) 
  {
    nextPos = nextPos + 1;
    if (nextPos == posShip)
      nextPos++;
    return (nextPos % width, nextPos / height);
  }

  function place(uint _width, uint _height) public override(Ship) returns (uint, uint)
  {
    width = _width;
    height = _height;
    uint h = random() % height;
    uint w = random() % width;
    return (h, w);
  }
}
