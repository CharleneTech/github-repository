
# 📑 Module: IT-Sicherheit & Systemhärtung (3. Aufgabe - Core Sheet)

---

## 📌 1. 核心考点抽象分类 (Abstract Domains)

```text
                        3. Aufgabe
                            │
  ┌─────────────────────────┼─────────────────────────┐
  ▼                         ▼                         ▼
Architektur & Härtung     Verwaltung & Bordmittel   Logging & DSGVO
(Schichten, BSI, Hardening) (GPO, Firewall, Antivirus)  (Fehleranalyse, Datensparsamkeit)

```

---

## 📌 2. Schichtenmodell des PCs (系统架构分层)

| Schicht (Position) | Beispiel | Funktion |
| --- | --- | --- |
| **Oberhalb des BS** | Anwendung (z. B. Textverarbeitung) | Erstellung von Dokumenten / Durchführung von Anwendungsaufgaben |
| **Mitte** | **Betriebssystem (BS)** | Bereitstellen einer Benutzeroberfläche & Schnittstellen |
| **Unterhalb des BS** | UEFI / BIOS / PC-Hardware | Bereitstellung einer Schnittstelle zwischen Hardware und BS; Verarbeitung & Speicherung |

---

## 📌 3. BSI & Betriebssystem-Härtung (System Hardening)

### 🏛️ Aufgaben des BSI (官方给分点)

* **Anlaufstelle** für Unternehmen und Bürger zum Thema IT-Sicherheit.
* **Erarbeitung von Standards** zur IT-Sicherheit (z. B. IT-Grundschutz).
* **Schutz** der IT-Systeme des Bundes.

### 🛡️ Systemhärtung (Definition & Maßnahmen)

* **Definition:** Reduktion von Angriffswöglichkeiten (Angriffsfläche).
* **Konkrete Maßnahmen (Standard-Antworten):**
1. Deaktivieren/Entfernen nicht notwendiger Dienste, Ports und Softwarekomponenten.
2. Reduzierung von Benutzerrechten auf das **minimal notwendige Maß** (Least Privilege).
3. Löschen aller nicht benötigten Benutzerkonten.
4. Einsatz von Verschlüsselung (z. B. Laufwerks- oder Datenübertragungsverschlüsselung).



### 🧰 Integrierte Systemwerkzeuge ("Bordmittel")

* **Firewall** (Netzwerkschutz)
* **Virenschutz / Defender** (Schadsoftwareschutz)
* **Benutzerverwaltung** (Rechtestreuung)
* **Datensicherung** (Backup/Restore)

---

## 📌 4. Gruppenrichtlinien (GPO - Group Policies)

* **Definition / Einsatz:** Centralized Management
> Digitale Richtlinien für Einstellungen (Computer und Benutzer), die es Administratoren erlauben, Konfigurationen **zentral** für einen oder mehrere Rechner vorzugeben.


* **Wichtiger IHK-Merksatz:** Die Einstellungen werden im Rechner festgeschrieben und **können durch Anwender nicht geändert werden**.
* **Beispiele:** Passworteinstellungen (Länge/Komplexität), Sperrung von Systemkonfigurationen.

---

## 📌 5. Protokollierung (Logging) & Datenschutz (DSGVO)

* **Sicherheitsnutzen (ca):**
> Identifikation von **Fehlern und unerlaubten Aktivitäten** sowie deren **Zuordnung zu entsprechenden Zeiten und Benutzern** (Nachvollziehbarkeit & Forensik).


* **Datenschutz-Anforderungen (cb):**
> Daten dürfen nur **begrenzt gespeichert und ausgewertet** werden. Einhaltung des Grundsatzes der **Datensparsamkeit / Datenminimierung** (DSGVO).
