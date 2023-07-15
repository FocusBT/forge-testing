pragma solidity ^0.8.10;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";

contract ContractBTest is Test {
    SimpleStorage simpleStorage;

    function setUp() external {
        DeploySimpleStorage deploySimpleStorage = new DeploySimpleStorage();
        simpleStorage = deploySimpleStorage.run();
    }

    function testEqual() public {
        simpleStorage.store(1);
        assertEq(1, simpleStorage.retrieve());
    }

    function testAddPerson() public {
        vm.prank(address(0));
        simpleStorage.addPerson("Alice", 1);
        assertEq(1, simpleStorage.retrievePeopleByName("Alice"));
    }
}
