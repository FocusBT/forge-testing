// SPDX-License-Identifier: MIT
// 1. Pragma
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test {
    uint number = 1;
    FundMe fundMe;

    function setUp() external {
        DeployFundMe deployfundme = new DeployFundMe();
        fundMe = deployfundme.run();
        // fundMe = new FundMe();
    }

    function testMin() public {
        assertEq(fundMe.MINIMUM_USD(), 5e19);
    }

    function testOwner() public {
        assertEq(fundMe.i_owner(), msg.sender);
        //reason for doing this is because msg.sender is not the one who is deploying this contract but FundMeTest is the contract that is deploying this contract
    }

    // function testDemo() public {
    //     console.log(number);
    //     console.log("hello");
    //     assertEq(number, 2);
    // }
}
