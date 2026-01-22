// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CredPass {
    address public owner;

    enum Tier { Bronze, Silver, Gold }

    struct UserCred {
        uint256 score;      // 0 - 100
        Tier tier;
        bytes32 proofHash;  // hash of off-chain proof
        bool exists;
    }

    // user wallet => credibility data
    mapping(address => UserCred) public users;

    // user => rewardId => redeemed?
    mapping(address => mapping(uint256 => bool)) public redeemed;

    event CredUpdated(address indexed user, uint256 score, Tier tier, bytes32 proofHash);
    event RewardRedeemed(address indexed user, uint256 rewardId);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function getTier(uint256 score) public pure returns (Tier) {
        if (score <= 40) return Tier.Bronze;
        if (score <= 70) return Tier.Silver;
        return Tier.Gold;
    }

    // Admin/issuer updates credibility score
    function updateCredibility(
        address user,
        uint256 score,
        bytes32 proofHash
    ) external onlyOwner {
        require(score <= 100, "Score must be <= 100");

        Tier tier = getTier(score);

        users[user] = UserCred({
            score: score,
            tier: tier,
            proofHash: proofHash,
            exists: true
        });

        emit CredUpdated(user, score, tier, proofHash);
    }

    function redeemReward(uint256 rewardId) external {
        require(users[msg.sender].exists, "User credibility not found");
        require(!redeemed[msg.sender][rewardId], "Already redeemed");

        redeemed[msg.sender][rewardId] = true;

        emit RewardRedeemed(msg.sender, rewardId);
    }

    function hasRedeemed(address user, uint256 rewardId) external view returns (bool) {
        return redeemed[user][rewardId];
    }
}
