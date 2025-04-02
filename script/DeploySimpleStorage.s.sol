// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "lib/forge-std/src/Script.sol";
import {SimpleStorage} from "src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    /* 
        Everything written between start and stop broadcast 
        is sent to the rpc for deployment
    */

    //using the run function to deploy the SimpleStorage contract
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
