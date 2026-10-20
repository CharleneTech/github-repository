# Bildschirm löschen und Titel anzeigen
Clear-Host
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "       PC-Gesundheitspruefung (Health)      " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# 1. Betriebssystem und Betriebszeit (Uptime) prüfen
Write-Host "`n[1/4] System- und Uptime-Informationen werden abgerufen..." -ForegroundColor Yellow
$os = Get-CimInstance Win32_OperatingSystem
$lastBoot =$os.LastBootUpTime
$uptime = (Get-Date) -$lastBoot
Write-Host "-> Betriebssystem: $($os.Caption)" -ForegroundColor Green
Write-Host "-> Letzter Systemstart: $lastBoot" -ForegroundColor Green
Write-Host "-> Systemlaufzeit: $($uptime.Days) Tage $($uptime.Hours) Std. $($uptime.Minutes) Min." -ForegroundColor Cyan

# 2. Arbeitsspeicher (RAM) überprüfen
Write-Host "`n[2/4] Arbeitsspeicher-Auslastung wird geprüft..." -ForegroundColor Yellow
$totalMemory = [Math]::Round($os.TotalVisibleMemorySize / 1MB, 2)
$freeMemory = [Math]::Round($os.FreePhysicalMemory / 1MB, 2)
$usedMemory = [Math]::Round($totalMemory - $freeMemory, 2)
$memoryPercent = [Math]::Round(($usedMemory / $totalMemory) * 100, 1)

Write-Host "-> Gesamter Arbeitsspeicher: $totalMemory GB" -ForegroundColor Green
Write-Host "-> Belegt: $usedMemory GB ($memoryPercent %)" -ForegroundColor $(if($memoryPercent -gt 85){"Red"}else{"Green"})
Write-Host "-> Verfuegbar: $freeMemory GB" -ForegroundColor Green

# 3. Speicherkapazität der Laufwerke prüfen
Write-Host "`n[3/4] Freier Speicherplatz auf den Laufwerken..." -ForegroundColor Yellow
Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="Belegt (GB)";Expression={[Math]::Round($_.Used/1GB, 2)}}, @{Name="Frei (GB)";Expression={[Math]::Round($_.Free/1GB, 2)}} | Format-Table -AutoSize

# 4. Top 5 Prozesse mit der höchsten CPU-Auslastung
Write-Host "[4/4] Top 5 Prozesse mit hoher CPU-Last..." -ForegroundColor Yellow
Get-Process | Sort-Object CPU -Descending | Select-Object Name, Id, @{Name="CPU (Sek.)";Expression={[Math]::Round($_.CPU, 2)}} -First 5 | Format-Table -AutoSize

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "    Pruefung erfolgreich abgeschlossen!    " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# Get-CimInstance -ClassName Win32_OperatingSystem | Get-Member