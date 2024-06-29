// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {

    // Public variables to store the details about the coin
    string public tokenName = "account";
    string public tokenAbbrv = "acc";
    uint256 public totalSupply;

    // Mapping from addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase the total supply and balance of the sender
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to decrease the total supply and balance of the sender
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}