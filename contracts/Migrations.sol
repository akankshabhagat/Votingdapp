// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Migrations {
    // State variable to store the owner's address
    address public owner = msg.sender;

    // State variable to store the last completed migration step
    uint public last_completed_migration;

    // Modifier to restrict function access to the contract owner
    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner"
        );
        _;
    }

    // Function to update the last completed migration step
    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }

    // Function to upgrade to a new migration contract
    function upgrade(address new_address) public restricted {
        Migrations upgraded = Migrations(new_address);
        upgraded.setCompleted(last_completed_migration);
    }
}
