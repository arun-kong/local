#!/bin/bash

# Define input and output files
input_file="/tmp/basicauth_credentials_dump.csv"
output_file="/tmp/update_commands.cql"

# Clear the output file if it exists
> "$output_file"

# Read the CSV file line by line
while IFS=, read -r id consumer_id created_at password tags username ws_id; do
    # Skip the header line
    if [[ "$id" == "id" ]]; then
        continue
    fi

    # Handle empty tags
    if [[ -z "$tags" ]]; then
        tags="null"
    else
        tags="'$tags'"
    fi

    # Generate the UPDATE command
    update_command=$(cat <<EOF
UPDATE KONG.basicauth_credentials
SET consumer_id = '$consumer_id',
    created_at = '$created_at',
    password = '$password',
    tags = $tags,
    username = '$username',
    ws_id = '$ws_id'
WHERE id = '$id';
EOF
    )

    # Append the command to the output file
    echo "$update_command" >> "$output_file"
done < "$input_file"

echo "Update commands have been written to $output_file"

