#!/bin/bash 
# Script 1: System Identity Report 
# Author: RIDDHIPRIYA NANDY 24BAI10228 | Course: Open Source Software

echo "======================================"
echo "    Open Source Audit — RIDDHIPRIYA NANDY 24BAI10228"
echo "    Software: Git"
echo "======================================"
echo ""
echo "System Identity Report"
echo "======================"
echo "Distribution : Git Bash on Windows"
echo "Kernel       : Windows $(uname -s)"
echo "User         : $(whoami)"
echo "Home Dir     : $HOME"
echo "Uptime       : $(uptime 2>/dev/null || echo 'Windows N/A')"
echo "Date/Time    : $(date)"
echo ""
echo "License: GNU General Public License v2.0 (GPLv2)"
echo "======================================"
