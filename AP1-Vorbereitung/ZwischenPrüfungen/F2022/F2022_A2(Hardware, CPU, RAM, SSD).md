### 📌 Zusammenfassung: Aufgabe 2 (Hardware, CPU, RAM, SSD & Schnittstellen)

#### 1. CPU-Montage & Kühlung

* **CPU-Einbau:** Auf korrekte Ausrichtung achten (Pfeil/Markierung auf CPU und Sockel abgleichen), um verbogene Pins (*verbogene Pins*) zu verhindern. Niemals mit Gewalt (*Force*) einsetzen!
* **Wärmeleitpaste (Thermal Paste):** Füllt mikroskopisch kleine Luftspalte zwischen CPU und Kühler, um die Wärmeableitung (*Wärmeübertragung*) zu maximieren und Überhitzung zu verhindern.

#### 2. Arbeitsspeicher (RAM)

* **Dual-Channel-Modus:** Um die doppelte Speicherbandbreite zu nutzen, müssen die RAM-Riegel in die korrespondierenden Slots (gemäß Mainboard-Handbuch, oft farblich markiert, z. B. Slot A2 und B2) gesteckt werden.

#### 3. Speichermedien: M.2 SSD vs. SATA SSD

* **M.2 SSD:**
* *Vorteil:* Extrem hohe Lese- und Schreibgeschwindigkeiten (über PCIe/NVMe), sehr kompakt (baugleich mit einem Kaugummi), kein Kabelgewirr.
* *Nachteil:* Teurer pro Gigabyte, erfordert oft bessere Kühlung (kann thermisch drosseln).


* **SATA SSD:**
* *Vorteil:* Günstiger, breite Kompatibilität.
* *Nachteil:* Stark durch das SATA-3.0-Protokoll limitiert (max. ca. 550 MB/s).



#### 4. Schnittstellen & Peripherie

* **Display-Anschlüsse:** Häufig HDMI und DisplayPort (DP) für hochauflösende Bildschirme.
* **USB-C (USB Type-C):**
* *Vorteile:* Symmetrischer Stecker (verdrehsicher, beidseitig einsteckbar), höhere Übertragungsraten, unterstützt Power Delivery (PD) zum Laden von Geräten und Video-Ausgabe (Alt Mode).



#### 5. CPU-Kennzahlen (Taskmanager)

* **Logische Prozessoren:** Durch **Hyper-Threading** (SMT) wird ein physischer Kern so aufgeteilt, dass er zwei Threads gleichzeitig verarbeiten kann (1 physischer Kern = 2 logische Prozessoren).
* **Cache (L1, L2, L3):** Sehr schnelles, kleines Zwischenlager direkt auf der CPU, um häufig benötigte Daten und Befehle verzögerungsarm bereitzustellen.
* **Frequenzeinheit Umrechnung:**
* $1\text{ GHz} = 10^9\text{ Hz}$ (1 Gigahertz = 1 Milliarde Hertz).
* $3,4\text{ GHz} = 3.400.000.000\text{ Hz}$.

