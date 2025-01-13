// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AggregatorV3Interface} from
    "chainlink-brownie-contracts/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

/**
 * @title MockV3Aggregator
 * @notice A mock of Chainlink's AggregatorV3Interface for testing purposes.
 */
contract MockV3Aggregator is AggregatorV3Interface {
    // uint256 public constant version = 4;

    uint8 public decimals;
    int256 public latestAnswer;
    uint256 public latestTimestamp;
    uint256 public latestRound;

    mapping(uint256 => int256) public answers;
    mapping(uint256 => uint256) public timestamps;
    mapping(uint256 => uint256) private startedAt;

    constructor(uint8 _decimals, int256 _initialAnswer) {
        decimals = _decimals;
        updateAnswer(_initialAnswer);
    }

    function updateAnswer(int256 _answer) public {
        latestAnswer = _answer;
        latestTimestamp = block.timestamp;
        latestRound++;
        answers[latestRound] = _answer;
        timestamps[latestRound] = block.timestamp;
        startedAt[latestRound] = block.timestamp;
    }

    function updateRoundData(uint80 _roundId, int256 _answer, uint256 _timestamp) public {
        answers[_roundId] = _answer;
        timestamps[_roundId] = _timestamp;
    }

    function getRoundData(uint80 _roundId)
        public
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAtTime, uint256 updatedAt, uint80 answeredInRound)
    {
        require(_roundId <= latestRound, "No data present");
        return (_roundId, answers[_roundId], startedAt[_roundId], timestamps[_roundId], _roundId);
    }

    function latestRoundData()
        public
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAtTime, uint256 updatedAt, uint80 answeredInRound)
    {
        return (uint80(latestRound), latestAnswer, startedAt[latestRound], latestTimestamp, uint80(latestRound));
    }

    function description() public pure override returns (string memory) {
        return "MockV3Aggregator";
    }

    function version() public pure override returns (uint256) {
        return 4;
    }
}
