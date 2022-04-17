pragma solidity 0.5.16;


contract Migrations {
    address public owner = msg.sender;
    uint256 public lastCompletedMigeration;

    modifier restricted() {
      
        if (msg.sender == owner) _;
    }

    function setCompleted(uint256 completed) public restricted {
        lastCompletedMigeration = completed;
    }
}
