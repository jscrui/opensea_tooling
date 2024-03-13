#!/bin/bash

# Ensure the collection parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <collection> <api_key> <number_of_tokens_to_update>" 
    exit 1
fi

# Ensure the API key is set
if [ -z "$2" ]; then
    echo "Usage: $0 <collection> <api_key> <number_of_tokens_to_update>" 
    exit 1
fi

# Ensure the Number of items to refresh is set
if [ -z "$3" ]; then
    echo "Usage: $0 <collection> <api_key> <number_of_tokens_to_update>" 
    exit 1
fi

# Assign the provided collection parameter to a variable
collection="$1"

# API key
API_KEY="$2"

# Loop for "$3" times
for ((i=1; i<="$3"; i++)); do
    # Construct the URL with the current value of i and the provided collection
    URL="https://api.opensea.io/api/v2/chain/ethereum/contract/$collection/nfts/$i/refresh"
    
    # Perform the curl request with the constructed URL
    curl --request POST \
         --url "$URL" \
         --header "x-api-key: $API_KEY"

    # Sleep for 30 seconds after reach 100 requests
    if [ $((i % 100)) -eq 0 ]; then
        sleep 30
    fi
done
