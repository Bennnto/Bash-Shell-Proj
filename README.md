# 🖥️ Simple System Monitor (Bash)
## How to use
  - This is use bash shell script bin/bash
    1. Save script as Monitor.sh
    2. Make it executable : Chmod +x Monitor.sh
    3. Run script : bash Monitor.sh
    
| 🔧 Section     | 🖥️ Command Used                       | 📄 Description / Purpose                        |
|----------------|----------------------------------------|--------------------------------------------------|
| **Date/Time**  | `date`                                 | Displays the current date and time              |
| **CPU Usage**  | `top -l 1 \| grep "CPU usage"`         | Gets a snapshot of CPU usage on macOS           |
| **RAM Usage**  | `vm_stat` + `awk`                      | Calculates RAM usage as a percentage            |
| **Disk Usage** | `df -h /`                              | Shows total, used, and available disk space     |
| **Battery**    | `pmset -g batt \| grep -Eo "\d+%"`     | Gets current battery percentage on MacBook      |

## Result
<img width="753" height="150" alt="Screenshot 2025-07-26 at 8 43 02 PM" src="https://github.com/user-attachments/assets/b80e9b3a-3aef-443a-83f6-65c4f6385e57" />
