# CredPass 🚀
**On-chain credibility → Rewards today, credit access tomorrow**

CredPass is a blockchain-based credibility layer for students and first-time credit users.
It generates an alternative credibility score (0–100) using multiple trust signals and lightweight AI fraud-risk detection.
The score/tier can be stored in a tamper-proof way on-chain (EVM), enabling instant rewards redemption.

---

## Track
**PayLoad’26 — Track 1: OnChain Rewards (Ethereum / EVM)**

---

## Problem
Traditional credit scores exclude students and first-time credit users even if they have responsible financial behaviour.
CredPass provides a verifiable trust layer using alternative signals.

---

## Solution (How it works)
1) User connects wallet (MetaMask) or uses **Demo Mode**
2) CredPass computes **Credibility Score + Tier** + fraud-risk score (lightweight AI)
3) Tier unlocks rewards and redemption is logged (prototype flow)

---

## Live Demo
- Website: https://namrataarya07.github.io/Credpass/
- Direct UI: https://namrataarya07.github.io/Credpass/frontend/

---

## Core Features
- Credibility Score (0–100) + Tier (Bronze/Silver/Gold)
- Lightweight AI / anomaly scoring for fraud-risk (Low/Medium/High)
- On-chain credibility proof concept (score + tier + proofHash)
- Tier-locked rewards unlock & redeem flow (demo integration)

---

## Repository Structure
- `/smart-contract` — Solidity smart contract (`CredPass.sol`)
- `/frontend` — Web UI (dashboard + rewards)

---

## Future Scope
- Banks/NBFCs can verify CredPass credibility tiers on-chain to offer:
  - student micro-loans
  - BNPL eligibility
  - lower interest rates for high-tier users
