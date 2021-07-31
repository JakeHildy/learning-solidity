pragma solidity ^0.4.25;

contract MappingContract {
    
    // Create in storage only
    mapping(string => string) relations;
    
    // Add a relations
    function addRelation(string memory name, string memory relation) public {
        // Store the relation
        relations[name] = relation;
    }
    
    // Returns a relation
    function getRelation(string memory name) public view returns (string memory) {
        return relations[name];
    }
    
    // Remove the key value pair from the mapping
    function removeRelation(string memory name) public {
        delete(relations[name]);
    }
}