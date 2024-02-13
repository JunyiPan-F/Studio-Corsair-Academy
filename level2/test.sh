#!/bin/bash
#'ipinfo.io/8.8.8.8'

# allow user to input the website
echo "Enter the website you want to check"
read website
response=$(curl -s $website)

# Display the response on the screen
echo "Response from $website:"
# echo "$response"

# Save the response to a file
echo "$response" > ipinfo.txt

# print the response to console
echo "Response saved to ipinfo.txt"
echo "The city is: $(jq '.city' ipinfo.txt)"
echo "The region is: $(jq '.region' ipinfo.txt)"
echo "The country is: $(jq '.country' ipinfo.txt)"