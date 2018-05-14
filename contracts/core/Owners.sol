pragma solidity ^0.4.23;

/// assign an owner which can later be changed
contract Owners {

    /// Call a function with the 'owner' address using the modifier
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    address public owner;

    /// Constructor assigns the sender to be the 'owner'
    function Owners() {
        owner = msg.sender;
    }

    address public newOwner;

    function changeOwner(address _newOwner) onlyOwner {
        require( _newOwner != address(0x0) );
        newOwner = _newOwner;
    }


    function acceptOwnership() {
        if (msg.sender == newOwner) {
            owner = newOwner;
        }
    }
}
