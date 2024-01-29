#!/bin/bash
#'ipinfo.io/8.8.8.8'
website=$1

response=$(curl -s $website)

# Display the response on the screen
echo "Response from $website:"
echo "$response"

# Save the response to a file
echo "$response" > output.txt