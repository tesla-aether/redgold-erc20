// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract WrappedRedgold is ERC20, ERC20Permit {
    constructor() ERC20("WrappedRedgold", "wRDG") ERC20Permit("WrappedRedgold") {
        _mint(msg.sender, 500000 * (10 ** uint256(decimals())));
    }
}
