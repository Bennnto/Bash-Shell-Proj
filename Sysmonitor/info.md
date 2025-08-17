# 🖥️ Simple System Monitor (Bash) 
simple and lightweight 
## How to use
  - This is use bash shell script bin/bash
    1. Save script as Monitor.sh
    2. Make it executable : <mark>Chmod +x Monitor.sh</mark> 
    3. Run script : <mark>bash Monitor.sh</mark>
    
| 🔧 Section     | 🖥️ Command Used                       | 📄 Description / Purpose                        |
|----------------|----------------------------------------|--------------------------------------------------|
| **Date/Time**  | `date`                                 | Displays the current date and time              |
| **CPU Usage**  | `top -l 1 \| grep "CPU usage"`         | Gets a snapshot of CPU usage on macOS           |
| **RAM Usage**  | `vm_stat` + `awk`                      | Calculates RAM usage as a percentage            |
| **Disk Usage** | `df -h /`                              | Shows total, used, and available disk space     |
| **Battery**    | `pmset -g batt \| grep -Eo "\d+%"`     | Gets current battery percentage on MacBook      |

## Add ON
  - U can edit part of the script by Add this to save log file 
    1. by ADD ing this at the top of the file : <mark>LOGFILE="DIRECTORY/FILENAME$(date +%F).log" >> $(date+%F) Optional File.log</mark>
    2. And ADD this after } at the end of script <mark>| tee -a "$LOGFILE"</mark>
    
## Result
<img width="549" height="189" alt="Screenshot 2025-07-26 at 8 43 56 PM" src="https://github.com/user-attachments/assets/e6222c5d-474c-412d-a000-c640ea8d8da8" />
