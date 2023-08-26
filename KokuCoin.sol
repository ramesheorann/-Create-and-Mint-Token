// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KokuCoin is ERC20, Ownable {
    constructor() ERC20("Koku Coin", "KUK") {
        _mint(msg.sender, 10 * 10 ** uint256(decimals()));
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 5; 
    }
}
