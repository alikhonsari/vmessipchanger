#!/bin/bash

# Prompt for VMess URL input
read -p "Enter the VMess URL: " vmess_url

# Extract VMess URL components
vmess_base64=$(echo "$vmess_url" | awk -F'vmess://' '{print $2}')
vmess_json=$(echo "$vmess_base64" | base64 -d)

# Print the VMess JSON in a pretty format
echo "Current VMess JSON:"
echo "$vmess_json" | jq .

# Prompt for new "add" value input
read -p "Enter the new 'add' value: " new_add_value

# Replace the value of the "add" key in the JSON with the new value
vmess_json_updated=$(echo "$vmess_json" | jq --arg new_add_value "$new_add_value" '.add = $new_add_value')

# Print the updated VMess JSON in a pretty format
echo "Updated VMess JSON:"
echo "$vmess_json_updated" | jq .

# Convert the updated JSON to base64
vmess_base64_updated=$(echo "$vmess_json_updated" | jq -r @base64)

# Create the updated VMess URL
vmess_url_updated="vmess://$vmess_base64_updated"

echo "Updated VMess URL:"
echo "$vmess_url_updated"
