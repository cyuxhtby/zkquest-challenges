// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Box is Initializable, ERC20Upgradeable, OwnableUpgradeable {
  function initialize() public initializer {
      __ERC20_init("Box name", "BOX");
      __Ownable_init();

      _mint(msg.sender, 200000 * 10 ** decimals());
  }

  function decimals() public pure override returns (uint8) {
      return 2;
  }
}