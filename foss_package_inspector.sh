#!/bin/bash 
# Script 2: FOSS Package Inspector 
# Author: RIDDHIPRIYA NANDY | Course: Open Source Software

PACKAGE="git"  # Our chosen software

# Check if package is installed (works on both RPM/Debian)
if rpm -q "$PACKAGE" &>/dev/null 2>&1 || dpkg -l "$PACKAGE" &>/dev/null 2>&1; then
    echo "✅ $PACKAGE is INSTALLED."
    
    # Get version/license/summary (RPM or Debian)
    if command -v rpm &>/dev/null; then
        rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary|Name' | head -4
    else
        dpkg -l "$PACKAGE" | grep "^ii" && dpkg -s "$PACKAGE" | grep -E 'Version|License|Description' | head -4
    fi
    
else
    echo "❌ $PACKAGE is NOT installed."
    echo "Install with: sudo apt install $PACKAGE  (Debian)  OR  sudo dnf install $PACKAGE (RPM)"
fi

echo ""
echo "Philosophy:"
# Case statement with package descriptions
case "$PACKAGE" in
    "git")
        echo "Git: The distributed version control that powers open source collaboration" ;;
    "httpd"|"apache2")
        echo "Apache: The web server that built the open internet" ;;
    "mysql"|"mariadb")
        echo "MySQL: Open source database powering millions of applications" ;;
    "vlc")
        echo "VLC: The ultimate free media player - plays everything" ;;
    "firefox")
        echo "Firefox: Privacy-first browser from the Mozilla community" ;;
    *)
        echo "Unknown package - check spelling or add to case statement" ;;
esac

echo "=================================="
