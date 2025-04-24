// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant CAT =
        "ipfs://QmZBfRDAWzSBKbCuhhCYKzzpxes4rzFZiuFuBaL9yaXcDz";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "BasicNft",
            block.chainid
        );
    }

    function mintNftOnConract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(CAT);
        vm.stopBroadcast();
    }
}
