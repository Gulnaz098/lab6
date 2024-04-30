
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SIBToken is ERC20 {
    constructor() ERC20("SIB Token", "SIB") {
        _mint(msg.sender, 1000 * 10 ** uint256(decimals()));
    }

    function decimals() public pure override returns (uint8) {
        return 4;
    }

    function name() public pure override returns (string memory) {
        return "SIB Token";
    }

    function symbol() public pure override returns (string memory) {
        return "SIB";
    }
}
