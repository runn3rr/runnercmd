# RunnerCMD
This script emulates a fake Command Prompt (CMD) with additional features, one of which is "spamping." Spamping utilizes Python to ping a specified IP address using threading, sending multiple pings concurrently for a rapid network test. Along with other custom functionalities, the script mimics the look and feel of a standard CMD window while offering playful or practical enhancements like simultaneous pings, all within a simple Batch script environment.

# Build

## Personal Note
I **PERSONALLY** find it better to just use the `\mix\cmd.bat` version, but you do you.

## Building

1. Open Command Prompt (WIN + R, cmd.exe) then cd to the directory of the `\py\main.py` script.
2. Type or Copy and paste this into the terminal:
```
pip install pyinstaller >nul 2>&1
pyinstaller -n rcmd_no_icon -i NONE --onefile main.py
rmdir /s /q build && del rcmd.spec
```

Successfully Built.

## Add Icon once Built

1. Download resource hacker [***here***](https://www.angusj.com/resourcehacker/)
2. Download [**`this .zip file`**](https://www.anonfile.la/39a750) and extract to anywhere
3. Open resource hacker and drag the `rcmd.exe` from `\py\dist\` (full dir: `\py\dist\rcmd.exe`) into the Resource Hacker UI
4. Choose `Action`
![image](https://github.com/user-attachments/assets/0efc5483-08ce-462b-807d-3b0544959c64)
5. Select `Add from a resource file (*.res, *.mui, *.dll, *.exe)...`
![image](https://github.com/user-attachments/assets/360e0df7-f94c-490e-b373-47ef75343f6e)
6. Find the `Icons.res` file from the extracted .zip file, select it and select `Open`
![image](https://github.com/user-attachments/assets/be7b6cf3-f919-4eb2-88e7-8e66aa2cf851)
7. Check `Icon Group` and select `Import`
![image](https://github.com/user-attachments/assets/a4efa1b8-375c-45dd-87bf-171945ab3ce1)
8. Choose the Save As button and save as `rcmd.exe` to any directory.
![image](https://github.com/user-attachments/assets/75866797-3e31-4035-b9ea-2ec083b61983)
![image](https://github.com/user-attachments/assets/8b059edf-d0ac-4136-a318-2d95dd4221da)

### Successfully Added Icon.
Reason for needing to use a `.res` file with Resource Hacker is due to `pyinstaller` not supporting multiple icons.
