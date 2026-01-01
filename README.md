
# Happy New Year 2026 - Sui NFT Collection

![Happy New Year 2026](https://walrus-mainnet-aggregator.rpc101.org/v1/blobs/DFBxFKxkkJ23oNMgn_baUcs5HVce_FEGrqJqlruEpRo)

## 🎆 Project Overview
**HappyNewYear** is a digital toast to 2026; a permanent celebration captured on the Sui Network. This collection serves as a timeless keepsake, marking a moment of joy, fresh beginnings, and the boundless potential of the year ahead.

Crafted by **Steven Hert**, this project is more than just code; it is a wish for prosperity and innovation, locked forever on the blockchain. The contract is immutable, ensuring that the spirit of this celebration remains unchanged for eternity.

## 🔗 Deployment Details
Below are the on-chain identifiers for the deployed contract and relevant transactions.

| Item | Identifier / Hash |
| :--- | :--- |
| **Package ID** | `[0x6dec6bf8c2c69f7130d278d7522927233ecc469ca5008b76abba9a22a6317f75]` |
| **Publish Transaction ID** | `[3EdZEhz9ZFB6QxunTryzGMgx9tW2H5gKN12siy5DToeZ]` |
| **Upgrade Cap Burn Tx** | `[ETp6Vff6AdkUp6kFqRH1VQ3yiVcjD5C535VfoQFVR22V]` |

> **Note on Immutability:** The Upgrade Capability was destroyed in the second transaction listed above. This contract is permanently frozen and cannot be modified, ensuring the authenticity of the collection.

## 📦 Technical Architecture

The project is organized into the following Move modules:

- **`happynewyear::init`**: 
  - Orchestrates the deployment sequence.
  - Automatically mints the initial limited supply (20 items).
  - Transfers the `AdminCap`, `Display` object, and the NFTs to the creator.
  
- **`happynewyear::message`**: 
  - Defines the `HappyNewYearMessage` struct (the NFT).
  - Holds the core data: Name, Description, and Image URL.

- **`happynewyear::display`**: 
  - Implements the `sui::display` standard.
  - Maps the NFT's on-chain data to visual fields (name, description, image, project_url) for wallet integration.

- **`happynewyear::project_meta`**: 
  - A utility module containing the constants for the collection metadata (Name: "Happy New Year 2026").

- **`happynewyear::admin_cap`**: 
  - Defines the administrative capability required to manage display fields.

## 🛠️ Build & Verification

To verify the source code, ensure you have the Sui binary installed and run:

```bash
# Build the project
sui move build

# Run tests (if applicable)
sui move test

```

## 📜 Metadata

* **Creator:** Steven Hert
* **Edition:** 2026 Celebration
* **Platform:** Sui Network

---

*Happy New Year 2026!*


