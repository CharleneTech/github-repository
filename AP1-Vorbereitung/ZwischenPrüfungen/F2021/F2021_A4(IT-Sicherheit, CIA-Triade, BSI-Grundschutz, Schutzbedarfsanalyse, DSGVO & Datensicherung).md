
# 📑 Cheat Sheet: Aufgabe 4 – Informationssicherheit & Datenschutz (AP1)

---

## 📌 1. Die Schutzziele der IT-Sicherheit (CIA-Triade)

* 🔒 **Vertraulichkeit (Confidentiality):** Schutz vor unbefugter Einsicht.
* *Maßnahmen:* Sichere Passwörter wählen, Festplattenverschlüsselung (BitLocker).


* 🛡️ **Integrität (Integrity):** Schutz vor Unverfälschtheit und Manipulation.
* *Maßnahmen:* Hashwertüberprüfung bei Software, zentrale Bearbeitung auf Servern.


* ⚡ **Verfügbarkeit (Availability):** Schutz vor Systemausfall und Datenverlust.
* *Maßnahmen:* Regelmäßige Datensicherungen (Backups), Redundanz (RAID).



---

## 📌 2. BSI IT-Grundschutz (PC-Client-Absicherung)

* **Autoupdate-Mechanismen:** Automatische Updates für Betriebssystem (z. B. WSUS / Windows Update), Virenscanner und vertrauenswürdige Software.
* **Differenzieren von Benutzerrollen (Rollentrennung):**
* Prinzip der minimalen Rechte (*Least Privilege*): „So viele Rechte wie nötig, so wenige wie möglich.“
* Trennung zwischen Standard-Benutzerkonten (Tagesgeschäft) und Administrator-Konten (Softwareinstallation, Systemkonfiguration).



---

## 📌 3. Schutzbedarfsanalyse (Kategorien & Begründung)

* **Mittel (Textverarbeitung):** Ausfall verursacht zwar Beeinträchtigungen im Betriebsablauf, aber keine unübersehbaren Schäden (Arbeiten auf Alternativen ausweichbar).
* **Hoch (Telemedizin / Videokonferenz):** Übertragung hochsensibler Patientendaten; Schutz vor unbefugtem Mitlesen zur Vermeidung von DSGVO-Verstößen zwingend erforderlich.
* **Sehr hoch (Patientendatenverarbeitung):** Manipulation von Diagnosen/Medikamenten kann zu direkten, lebensgefährlichen Behandlungsfehlern führen (*existenzbedrohendes Ausmaß*).

---

## 📌 4. Datenschutz & Rechtliche Grundlagen

* **Besonders geschützte Daten:** Gesundheitsdaten, Patientendaten sowie Mitarbeiterdaten.
* **Rechtliche Grundlagen:** **DSGVO** (insbesondere **Art. 9 DSGVO**) und das **BDSG** (welches die DSGVO auf nationaler Ebene ergänzt und präzisiert).

---

## 📌 5. Kriterien für sichere Passwörter

1. **Ausreichende Länge:** Erhöht den Kombinationsraum exponentiell und erschwert **Brute-Force-Angriffe**.
2. **Zeichenvielfalt:** Kombination aus Groß-/Kleinbuchstaben, Zahlen und Sonderzeichen.
3. **Kein persönlicher Bezug / Keine Wörterbuchwörter:** Schutz vor Erraten und **Wörterbuch-Angriffen (Dictionary Attacks)**.
4. **Einmaligkeit:** Verschiedene Passwörter für verschiedene Zugänge (Risikominimierung).

---

## 📌 6. Datensicherungsstrategie (Backup-Konzept)

* ❌ **Risiken schlechter Konzepte:**
* Wöchentliche Sicherung = hohes Datenverlust-Risiko (bis zu 6 Tage Verlust).
* Sicherung auf zweiter Partition derselben Festplatte = Keine Redundanz bei Hardwaredefekt.
* Fehlende räumliche Trennung = Totalverlust im Brandfall.


* ✅ **Optimale Lösung:**
* Wöchentliche Vollsicherung + **tägliche inkrementelle Sicherung**.
* Ablage auf dedizierten, redundanten Systemen (**RAID / NAS**).
* **Räumliche Trennung** der externen Sicherungsmedien.


