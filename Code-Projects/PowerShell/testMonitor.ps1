# 1. Titel ausgeben
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  PowerShell Test erfolgreich!" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan

# 2. Uhrzeit anzeigen
$CurrentTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Write-Host "`n[+] Aktuelle Zeit: $CurrentTime" -ForegroundColor Green

# 3. Top 5 Prozesse nach Speicherverbrauch
Write-Host "`n[+] Top 5 Speicherfresser (RAM):" -ForegroundColor Green

Get-Process | 
    Sort-Object WorkingSet64 -Descending | 
    Select-Object -First 5 -Property Name, Id, @{Name="Memory(MB)"; Expression={[math]::Round($_.WorkingSet64 / 1MB, 2)}} | 
    Format-Table -AutoSize

# 4. VS Code Status prüfen
$CodeProc = Get-Process -Name "Code" -ErrorAction SilentlyContinue

if ($CodeProc) {
    Write-Host "[+] VS Code läuft aktuell (PID: $($CodeProc[0].Id))" -ForegroundColor Yellow
}

Write-Host "========================================" -ForegroundColor Cyan