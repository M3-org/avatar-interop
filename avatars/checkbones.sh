#!/bin/bash

# Array of required bone names
required_bones=(
    "neck"
    "head"
    "hips"
    "spine"
    "chest"
    "left UpperArm"
    "right UpperArm"
    "left LowerArm"
    "right LowerArm"
    "left Hand"
    "right Hand"
    "left UpperLeg"
    "right UpperLeg"
    "left LowerLeg"
    "right LowerLeg"
    "left Foot"
    "right Foot"
)

# Check if a bone name is present in the file content
function check_bone_presence {
    grep -q -w -F "$1" "$2" && echo -e "  \e[32m✓\e[0m" || echo ""
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
    echo -n "$bone | present"
    check_bone_presence "$bone" "$vrm_file"
done
