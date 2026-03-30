# OSS Audit - 24BAI10228

**Open Source Software Audit Report**

**Student name:** RIDDHIPRIYA NANDY
**Registration number:** 24BAI10228
**Chosen Software:** Git (GPLv2 Licensed Distributed Version Control)  
**Course:** Open Source Software

## Scripts Overview (5/5 Complete)

| # | Script | Description | Concepts Used |
|---|--------|-------------|---------------|
| 1 | `system_identity.sh` | System welcome screen with distro, kernel, user info | Variables, `$()`, `echo` formatting |
| 2 | `foss_package_inspector.sh` | Checks if Git installed + version/license | `if/then/else`, `case`, `rpm/dpkg \| grep` |
| 3 | `disk_permission_auditor.sh` | Audits disk usage/permissions of system dirs + Git configs | `for` loop, `ls -ld \| awk`, `du \| cut` |
| 4 | `log_analyzer.sh` | Counts ERRORs in log files | `while read`, `if-then`, counters, `$1` args |
| 5 | `manifesto_generator.sh` | Interactive FOSS manifesto generator | `read -p`, here-docs, file `> >>` I/O |

## Step-by-Step Run Instructions (Linux)

### **Prerequisites/Dependencies:**
**Git Bash (Windows) or any Linux terminal**  
**No additional packages needed** (uses coreutils only)  
**`chmod +x *.sh`** - Make all scripts executable first

### **Script 1: System Identity**
```bash
chmod +x system_identity.sh
./system_identity.sh
```
**Output:** Formatted system info + GPLv2 notice

### **Script 2: Package Inspector**  
```bash
chmod +x foss_package_inspector.sh
./foss_package_inspector.sh
```
**Output:** Git install status + philosophy quote

### **Script 3: Disk Auditor**
```bash
chmod +x disk_permission_auditor.sh
./disk_permission_auditor.sh
```
**Output:** Permissions/sizes for `/etc`, `/var/log`, Git configs

### **Script 4: Log Analyzer**
```bash
chmod +x log_analyzer.sh
echo "test ERROR line1" > test.log
echo "normal" >> test.log
./log_analyzer.sh test.log ERROR
```
**Output:** ERROR count (2) from test.log

### **Script 5: Manifesto Generator**
```bash
chmod +x manifesto_generator.sh
./manifesto_generator.sh
```
**Input:** Answer 3 interactive questions  
**Output:** `manifesto_[username].txt` created

## Screenshots

1. **Script 1**  
   <img width="500" height="300" src="https://github.com/user-attachments/assets/18737fd9-acb0-46a2-8d12-f60e1dc1b719" />

2. **Script 2**  
   <img width="500" height="200" src="https://github.com/user-attachments/assets/61827ba4-903f-4604-a8a1-0df2ffe86c45" />

3. **Script 3**  
   <img width="500" height="250" src="https://github.com/user-attachments/assets/d8960f8e-df61-4f15-a508-617e6e75cec1" />

4. **Script 4**  
   <img width="500" height="200" src="https://github.com/user-attachments/assets/83e8929a-8306-4a6d-b164-0127f05dce87" />

5. **Script 5**  
   <img width="500" height="300" src="https://github.com/user-attachments/assets/1c1e6018-5bf4-47f2-9cc7-127adbaf6495" />

## Generated Files
- `manifesto_RIDDHI_PRIYA_NANDI.txt` - Personal philosophy
- `test.log` - Sample log data

