#!/bin/bash 
# Script 4: Log File Analyzer (Units 2 & 5)
# Author: RIDDHIPRIYA NANDY | Course: Open Source Software
# Usage: ./log_analyzer.sh /var/log/syslog ERROR

LOGFILE="${1:-/var/log/syslog}"  # Default log file
KEYWORD="${2:-ERROR}"            # Default keyword
COUNT=0
MATCHES=()

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "❌ Error: Log file '$LOGFILE' not found."
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog ERROR"
    exit 1
fi

# While-read loop to analyze log file
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCHES+=("$LINE")  # Store matching lines
    fi
done < "$LOGFILE"

# Summary
echo "📊 Log Analysis Summary"
echo "======================"
echo "File     : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "Total matches: $COUNT"

# Handle empty file or no matches (retry logic)
if [ $COUNT -eq 0 ]; then
    echo "⚠️  No '$KEYWORD' entries found. File may be empty or rotated."
    echo "Checking file size: $(du -h "$LOGFILE" | cut -f1)"
    exit 0
fi

# Show last 5 matching lines
echo ""
echo "Last 5 matching lines:"
echo "${MATCHES[@]: -5}" | tail -5
echo "======================"
