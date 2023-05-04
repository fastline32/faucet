// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Faucet {

    address[] public funders;
    // this is a special function
    // it's called when you make a tx that doesn't specify
    // function name to call

    // External function are part of the contract interface
    // which means they can be called via contracts and other txs
    receive() external payable {}
    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function getAllFunders() public view returns (address[] memory) {
        return funders;
    }

    function getFundersAtIndex(uint8 index) external view returns (address) {
        address[] memory _funders = getAllFunders();
        return _funders[index];
    }
}