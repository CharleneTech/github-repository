# Bildschirm löschen und Titel anzeigen
Clear-Host
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "    Unternehmens-Drucker-Prueftool (Check)   " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

# 1. Druckerdienst (Print Spooler) prüfen
Write-Host "`n[1/3] Druckdienst (Print Spooler) wird geprüft..." -ForegroundColor Yellow
$spooler = Get-Service -Name Spooler
if ($spooler.Status -eq "Running") {
    Write-Host "-> Druckdienst (Spooler) läuft einwandfrei." -ForegroundColor Green
} else {
    Write-Host "-> Warnung: Druckdienst gestoppt! Neustart wird versucht..." -ForegroundColor Red
    try {
        Start-Service -Name Spooler -ErrorAction Stop
        Write-Host "-> Druckdienst wurde erfolgreich neu gestartet!" -ForegroundColor Green
    } catch {
        Write-Host "-> Fehler: Druckdienst konnte nicht gestartet werden. Ggf. Administratorrechte erforderlich." -ForegroundColor Red
    }
}

# 2. Alle installierten Drucker auflisten
Write-Host "`n[2/3] Installierte Drucker werden abgerufen..." -ForegroundColor Yellow
$printers = Get-Printer | Select-Object Name, PrinterStatus, PortName, Shared, Published
if ($printers) {
    $printers | Format-Table -AutoSize
} else {
    Write-Host "-> Keine installierten Drucker gefunden." -ForegroundColor Red
}

# 3. Nach hängenden Druckaufträgen (Print Jobs) suchen
Write-Host "`n[3/3] Nach blockierten Druckaufträgen wird gesucht..." -ForegroundColor Yellow
$jobs = Get-PrintJob -ErrorAction SilentlyContinue
if ($jobs) {
    Write-Host "-> Achtung: Blockierte oder hängende Druckaufträge gefunden:" -ForegroundColor Red
    $jobs | Select-Object PrinterName, DocumentName, JobId, User, SubmittedTime | Format-Table -AutoSize
    Write-Host "Tipp: Bei Problemen Druckwarteschlange bereinigen mit: Restart-Service Spooler" -ForegroundColor Cyan
} else {
    Write-Host "-> Druckwarteschlange ist sauber, keine hängenden Aufträge." -ForegroundColor Green
}

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "        Druckerpruefung abgeschlossen!     " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan