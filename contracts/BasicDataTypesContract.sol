pragma solidity ^0.4.25;

contract BasicDataTypesContract {
    uint8 a = 255; // 1 bytes unsigned integer
    
    address public owner; // Address types variable, called owner
    
    bool public flag = true;
    
    uint ownerInitialBalance; // uint type variable, inital value default = 0.
    
    function test (address addr) public returns (uint) {
        owner = addr;
        ownerInitialBalance = owner.balance;
        
        if (1 > 0) {
            // Do something
        }
        
        return ownerInitialBalance;
    }
}