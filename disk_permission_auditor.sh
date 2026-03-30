#!/bin/bash 
# Script 3: Disk and Permission Auditor
# Author: RIDDHIPRIYA NANDY | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
GIT_CONFIGS=("/etc/gitconfig" "/usr/etc/gitconfig" ".gitconfig" "/usr/share/git-core")

echo "Directory Audit Report"
echo "----------------------"
echo ""

# For loop to audit standard directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Git Configuration Audit"
echo "-----------------------"

# Check Git's config directories
for GITDIR in "${GIT_CONFIGS[@]}"; do
    if [ -e "$GITDIR" ]; then
        PERMS=$(ls -ld "$GITDIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$GITDIR" 2>/dev/null | cut -f1)
        echo "$GITDIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$GITDIR => Not found"
    fi
done

echo ""
echo "=================================="
