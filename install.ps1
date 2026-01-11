$link = "https://github.com/felixgoff/Neolotl/releases/latest/download/NeolotlCLI.exe"

$outfile = "$env:TEMP\NeolotlCLI.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
