#!/bin/bash 
# Script 5: Open Source Manifesto Generator (Unit 5)
# Author: RIDDHIPRIYA NANDY | Course: Open Source Software
# Concepts: read input, string concatenation, file writing (> >>), date, aliases

echo "======================================"
echo "  Open Source Manifesto Generator"
echo "======================================"
echo ""

# Interactive user input with read
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)
OUTPUT="manifesto_${AUTHOR}.txt"

# Clear file and compose manifesto using string concatenation
> "$OUTPUT"  # Empty the file (truncate)

cat << EOF >> "$OUTPUT"
OPEN SOURCE MANIFESTO
=====================
Generated: $DATE by $AUTHOR

I commit to Open Source because:

- Every day I use $TOOL, which embodies the freedom to:
  "$FREEDOM"

- My contribution to FOSS will be $BUILD, shared freely
  for the community to build upon.

Four Freedoms Guide Me:
1. Run software for any purpose
2. Study and modify the source
3. Share with others
4. Share my improvements

Signed,
$AUTHOR
=====================
EOF

echo ""
echo "✅ Manifesto saved to $OUTPUT"
echo ""
echo "=== PREVIEW ==="
cat "$OUTPUT"
echo "================"
