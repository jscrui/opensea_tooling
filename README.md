# OpenSea Script Collection

This collection of scripts is designed to streamline your experience while working with OpenSea, a leading marketplace for non-fungible tokens (NFTs) and digital collectibles on the Ethereum blockchain.

## Introduction

OpenSea provides a powerful API that allows developers and users to interact with their platform programmatically. However, managing collections and performing bulk operations can be cumbersome without the right tools. This set of scripts aims to simplify common tasks associated with managing NFT collections on OpenSea.

## Prerequisites

Before using these scripts, you'll need to obtain an API key from OpenSea. This key allows you to authenticate with their API and perform actions on behalf of your account. You can obtain an API key by signing up for an OpenSea account and generating an API key in your account settings.

## Scripts

### `metadata-updater.sh`

The `metadata-updater.sh` script is designed to refresh all the metadata of a collection on OpenSea. When you update metadata associated with your NFT assets (such as images or descriptions), you may want to ensure that these changes are reflected on OpenSea. This script automates the process of refreshing metadata for all assets in a collection.

Note: every 100 updates the script will pause for 30 seconds.

#### Usage

```bash
./metadata-updater.sh <collection_address> <opensea_api_key> <total_collection_items_number> 
```
Psst: Don't forget to make it executable by running

```bash
chmod +x metadata-updater.sh
```

Here is an Example to update all items in Mutant Ape Yacht Club collection.

```bash
./metadata-updater.sh 0x60E4d786628Fea6478F785A6d7e704777c86a7c6 6b6e123456789asdfghjklmnopqrstuv 20000
```

#### Note

Please mark this repository if it has been helpful to you, as additional tools will be added in the very near future!


