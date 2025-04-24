// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");
    string public constant CAT =
        "ipfs://QmZBfRDAWzSBKbCuhhCYKzzpxes4rzFZiuFuBaL9yaXcDz";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expected = "Dogie";
        string memory actualName = basicNft.name();
        assertEq(expected, actualName);
        // assert(
        //     keccak256(abi.encodePacked(expected)) ==
        //         keccak256(abi.encodePacked(actualName))
        // );
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(USER);
        basicNft.mintNft(CAT);

        assert(basicNft.balanceOf(USER) == 1);
        assert(
            keccak256(abi.encodePacked(basicNft.tokenURI(0))) ==
                keccak256(abi.encodePacked(CAT))
        );
    }
}
