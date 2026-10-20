<#
.SYNOPSIS
    Drucker- und Netzwerk-Diagnoseskript für die IT-Umgebung.
.DESCRIPTION
    Dieses Skript prüft den Druckerdienst, testet die IP-Erreichbarkeit
    und listet alle installierten Drucker auf.
#>

# 1. Druckerdienst (Spooler) überprüfen
Write-Host "=== 1. PRÜFUNG DES DRUCKERDIENSTES ===" -ForegroundColor Cyan
$spooler = Get-Service -Name Spooler
if ($spooler.Status -eq 'Running') {
    Write-Host "[OK] Der Druckerdienst (Spooler) läuft einwandfrei." -ForegroundColor Green
} else {
    Write-Host "[WARNUNG] Der Druckerdienst läuft nicht! Versuche ihn zu starten..." -ForegroundColor Yellow
    Start-Service -Name Spooler
}

Write-Host ""

# 2. IP-Verbindung testen (Beispiel: Standard-Netzwerkdrucker / ZD410)
Write-Host "=== 2. NETZWERK-VERBINDUNGSTEST (PING) ===" -ForegroundColor Cyan
$printerIP = "192.168.1.88" # Hier die IP des Druckers anpassen
Write-Host "Teste Verbindung zur Drucker-IP: $printerIP ..."

$pingTest = Test-Connection -ComputerName $printerIP -Count 2 -Quiet
if ($pingTest) {
    Write-Host "[ERFOLG] Drucker unter $printerIP ist erreichbar (Online)." -ForegroundColor Green
} else {
    Write-Host "[FEHLER] Drucker unter $printerIP antwortet nicht (Offline/Netzwerkfehler)." -ForegroundColor Red
}

Write-Host ""

# 3. Alle installierten Drucker auflisten
Write-Host "=== 3. INSTALLIERTE DRUCKER IM SYSTEM ===" -ForegroundColor Cyan
Get-Printer | Format-Table Name, PrinterStatus, PortName -AutoSize