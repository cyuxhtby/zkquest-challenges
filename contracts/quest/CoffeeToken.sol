// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract CoffeeToken is ERC20, Ownable, ERC20Permit {
    constructor()
        ERC20("Best coffee in Denver", "COFFEE")
        Ownable()
        ERC20Permit("Best coffee in Denver") 
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); 
    }
}
