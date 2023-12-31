// SPDX-License-Identifier: MIT
// 1. Pragma
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        vm.startBroadcast(); // deploying and stuff comes between vm
        FundMe fundMe = new FundMe();
        vm.stopBroadcast();
        return fundMe;
    }
}
