// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/contracts/Raffle.sol";
import {HelperConfig} from "../script/HelperConfig.s.sol";

//Lottery/src/contracts/Raffle.sol

contract DeployRaffle is Script {
    function run() public {}

    function deployContract() public returns (Raffle, HelperConfig) {
        HelperConfig helperConfig = new HelperConfig();
        HelperConfig.NetworkConfig memory config = helperConfig.getConfig();

        vm.startBroadcast();
        Raffle raffle = new Raffle(
            config.entranceFee,
            config.interval,
            config.vrfCoordinator,
            config.gasLane,
            config.callbackGasLimit,
            uint32(config.subscriptionId)
        );
        vm.stopBroadcast();
        return (raffle, helperConfig);
    }
}
