// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyContract_of_error_handling {
    uint256 public balance;
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    modifier onlyOwner { 
        require (owner == msg.sender, "only owner can access"); //using modifier only owner can access the function
        _;
    }


    function Add_Amount(uint256 amount) public onlyOwner {
        
        require(amount > 0, "Amount must not be equal to 0"); //using require() to handle error
        balance += amount;
    }

    function Remove(uint256 amount) public onlyOwner {
        
        assert(balance >= amount); //using assert() to handle the error
        balance -= amount;
    }

    function check_sender_address(address ad) public view onlyOwner returns (bool) {
        
        if (ad != owner) {
           
            revert("address does not match the sender address"); //using revert() to handle error
        }
        return true;
    }
}

