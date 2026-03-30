# oss-audit-24BHI10079
This project audits VLC Media Player, tracing its origin from a 1996 student project at École Centrale Paris to a global OSS standard. It analyzes the GPL v2.1 license and modular architecture. Using five custom shell scripts on macOS, I verified its system footprint, process efficiency, and commitment to user privacy and digital sovereignty.
# Open Source Software Audit: VLC Media Player
**Student Name:** Shevonne Maria Jose  
**Registration Number:** 24BHI10079  
**Course:** Open Source Software (NGMC)

## Project Overview
This repository contains a structured audit of VLC Media Player, exploring its origin at École Centrale Paris, its GPL licensing model, and its technical footprint on a Unix-based system (macOS).

## Included Scripts
1. **identity.sh**: Generates a system identity report.
2. **check_vlc.sh**: Inspects the VLC installation and version metadata.
3. **audit_vlc_files.sh**: Audits configuration and cache directories.
4. **vlc_monitor.sh**: Monitors real-time CPU/Memory usage of the VLC process.
5. **manifesto.sh**: An interactive script to generate a user philosophy statement.

## How to Run
To execute these scripts on a Linux/Unix terminal, follow these steps:

1. Clone the repository:
   `git clone https://github.com/YOUR_USERNAME/oss-audit-24BHI10079.git`
2. Navigate to the folder:
   `cd oss-audit-24BHI10079`
3. Grant execution permissions:
   `chmod +x *.sh`
4. Run a script (e.g., identity):
   `./identity.sh`
