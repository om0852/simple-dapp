// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Funder{
    uint public numOfFunder;
    mapping (uint=>address) private  funders;
    
    receive () external payable {
        
    }

    function transfer() external payable {
        funders[numOfFunder] = msg.sender;
    }
    function withdraw(uint withdrawAmount) external {
        require(withdrawAmount <= 2000000000000000000,"Cannot withdraw more than 2 ether");
        payable (msg.sender).transfer(withdrawAmount);
    }
}