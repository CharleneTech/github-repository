

# 📑 Cheat Sheet: Aufgabe 3 – Arztpraxis Care (Migration & Infrastruktur)

---

## 📌 1. Lastenheft (5 typische Inhalte)

* **Zielsetzung / Projektziele:** Was soll erreicht werden?
* **Ist-Zustand:** Beschreibung der aktuellen IT-Infrastruktur / Schwachstellen.
* **Soll-Anforderungen (Funktional):** Konkrete Aufgaben, die das System erfüllen muss.
* **Nicht-funktionale Anforderungen:** Qualitätskriterien (Datenschutz/DSGVO, Performance, Sicherheit).
* **Rahmenbedingungen:** Zeitplan, Budget, Schnittstellen und gesetzliche Vorgaben.

---

## 📌 2. Projektkostenberechnung (Migration)

* **Formel:**
$$\text{Gesamtkosten} = \text{Anzahl der Postfächer} \times \text{Dauer pro Postfach (h)} \times \text{Stundensatz (€/h)}$$


* **Beispiel:**
$$20 \text{ Postfächer} \times 2\text{ h} \times 130\text{ €/h} = \mathbf{5.200\text{ EUR}}$$



---

## 📌 3. Remote Work in der Arztpraxis (Pro & Contra)

* **Vorteile (Pro):**
* **Kostenvorteil:** Geringere Fahrtkosten und Spesen für Dienstleister.
* **Umweltschonend (Green IT):** CO2-Einsparung durch entfallende Anfahrt.
* **Ressourcenschonung:** Keine Blockierung interner Räume in der Praxis.


* **Nachteile / Risiken (Contra):**
* **Datenschutzrisiken (DSGVO):** Gefahr des Abgriffs sensibler **Patientendaten**.
* **Zusatzkosten:** Notwendigkeit abgesicherter Verbindungen (z. B. VPN-Tunnel).
* **Eingeschränkter Support:** Keine physische Entstörung vor Ort bei Verbindungsausfall.



---

## 📌 4. Schulungsmethoden bei Software-Einführung

* **Schulung am Arbeitsplatz:** Einweisung am echten Arbeitsplatz; direkte Rückfragen während der Arbeitszeit möglich.
* **Webinare:** Interaktiver Online-Kurs zu festen Zeiten; ortsunabhängig.
* **Video-Tutorien:** Vorbereitete Videos; **zeitlich flexibel** nutzbar, aber *keine* Interaktion.
* **Multiplikatoren-Schulung:** Einweisung ausgewählter Key-User, die ihr Wissen intern an Kollegen weitergeben (ressourcenschonend).

---

## 📌 5. RAID-Level im Vergleich & Entschiedung

* **RAID 0:** Parallele Zugriffe (schnell), **keine Redundanz** (bei Ausfall 1 Platte Totalverlust) $\rightarrow$ *Ungeeignet*.
* **RAID 1:** Vollständige Spiegelung, hoher Schutz, aber **50% Speicherverlust** $\rightarrow$ *Geringe Effizienz*.
* **RAID 5:** Parität verteilt auf mind. **3 Platten**; verkraftet Ausfall von 1 Platte bei **hoher Nettospeicherkapazität** $\rightarrow$ **✅ Beste Wahl für die Praxis!**

