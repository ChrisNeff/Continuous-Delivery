@echo off
powershell.exe -NoProfile -ExecutionPolicy unrestricted -Command "& { .\tools\psake\psake .\build\build.ps1 %* -parameters @{env='local'; build_number='0.0.0.1'}; if ($lastexitcode -ne 0) {write-host "ERROR: $lastexitcode" -fore RED; exit $lastexitcode} }"
