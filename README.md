# CredPass

CredPass is a blockchain-based credibility layer for students and first-time credit users.
It generates an alternative credibility score (0–100) using multiple trust signals and lightweight AI fraud-risk detection.
The credibility score and tier are stored on-chain (tamper-proof), enabling instant rewards redemption.

## Track
PayLoad’26 — Track 1: OnChain Rewards (Ethereum Track)

## Core Features
- Credibility Score (0–100) + Tier (Bronze/Silver/Gold)
- Lightweight AI / anomaly scoring for fraud-risk (Low/Medium/High)
- On-chain storage of score + proof hash
- Rewards unlock & redeem flow (E-commerce demo integration)

## Repository Structure
- `/smart-contract` — Solidity smart contract
- `/frontend` — Web UI (dashboard + rewards)

## Future Scope
- Banks/NBFCs can verify CredPass credibility tiers on-chain to offer:
  - student micro-loans
  - BNPL eligibility
  - lower interest rates for high-tier users
