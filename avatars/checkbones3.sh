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

# Function to check if a bone name is present in the file content (case-insensitive and spaces removed)
function check_bone_presence {
    grep -qi -w -F "${1// /}" "$2" && echo -e "  \e[32m✓\e[0m $1" || echo ""
}

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

# Print the filename
echo "Filename: $vrm_file"

# Loop through the required bone names and check their presence
for bone in "${required_bones[@]}"; do
    check_bone_presence "$bone" "$vrm_file"
done
