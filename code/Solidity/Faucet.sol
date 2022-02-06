// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Faucet {

    function withdraw(uint withdraw_amount) public payable {

        require(withdraw_amount <= 100000000000000000);

        payable(msg.sender).transfer(withdraw_amount);

    }

    receive () external payable {}

}
