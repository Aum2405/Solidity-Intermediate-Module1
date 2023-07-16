// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Intermediate {
    mapping(address => uint) public balances;

    function depositCoin(address _address, uint _value) public payable {
        require(_value >= 1000, " Minimum required amount to deposit is 1000");
        balances[_address] += _value;
    }

    function Employee(uint _required_employee) public pure returns (string memory) {
        if (_required_employee <= 5) {
            revert("Requirement Does not match");
        }

        return "You are hired!";
    }

    function withdrawCoin(address _address, uint _value) public {
        assert(balances[_address] >= _value);
        balances[_address] -= _value;
    }
}
