#!/bin/bash

# Array of required bone names (all in lowercase and without spaces)
required_bones=(
    "neck"
    "head"
    "hips"
    "spine"
    "chest"
    "leftupperarm"
    "rightupperarm"
    "leftlowerarm"
    "rightlowerarm"
    "lefthand"
    "righthand"
    "leftupperleg"
    "rightupperleg"
    "leftlowerleg"
    "rightlowerleg"
    "leftfoot"
    "rightfoot"
)

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <vrm_file>"
    exit 1
fi

vrm_file="$1"

# Check if the file exists
if [ ! -f "$vrm_file" ]; then
    echo "Error: File '$vrm_file' not found!"
    exit 1
fi

# Function to check if a bone name is present in the JSON content (case-insensitive)
function check_bone_presence {
    echo "$1" | grep -qia "\"name\":\s*\"$2\""
}

# Print the filename and matched bone names
echo "Filename: $vrm_file"
awk -v RS='}' '{ print $0 "}" }' "$vrm_file" | while read -r data; do
    for bone in "${required_bones[@]}"; do
        if check_bone_presence "$data" "$bone"; then
            echo -n "$bone | present  ✓"
            echo "  => $data"
        fi
    done
done
