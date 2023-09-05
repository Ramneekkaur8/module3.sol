// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertExample {
    function example(uint256 x) public pure returns (uint256) {
        assert(x != 0);
        return 10 / x;
    }
}

contract RevertExample {
    uint256 public balance;

    constructor(uint256 initialBalance) {
        balance = initialBalance;
    }

    function withdraw(uint256 amount) external {
        require(amount <= balance, "Insufficient balance");
        balance = balance - amount;
    }
}

contract RequireExample {
    uint256 public balance;

    constructor(uint256 initialBalance) {
        balance = initialBalance;
    }

    function withdraw(uint256 amount) external {
        require(amount <= balance, "Insufficient balance");
        balance = balance - amount;
    }
}
