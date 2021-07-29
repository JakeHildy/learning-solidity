pragma solidity ^0.4.25;

contract TypesConversionContract {
    uint8 a = 255;
    uint ownerInitialBalance;
    
    function conversion() public {
        int b; // b is 32 bytes signed integer... 256 bits
        b = a; // Compilation works since uint8 can fit into uint256
        //a = b; // Fails since cant fit 256 in 8.
        a = uint8(b); // Explicit type conversion, will stuff 32 bytes into 1 byte.
    }
}