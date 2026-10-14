
### 🔑 第四题核心关键词 (Stichpunkte für Aufgabe 4)

* **`Cloud vs. On-Premises (Vor- und Nachteile)`**（云端部署与本地部署的成本、安全、运维对比）
* **`Make-or-Buy-Entscheidung`**（外包还是自研/自建的经济性抉择）
* **`Übertragungszeit-Berechnung (Bandbreite & Dateigröße)`**（文件传输时间计算公式）
* **`Wirtschaftlichkeitsanalyse (Nutzwertanalyse / Kostenvergleich)`**（效用分析与成本效益对比）
* **建议文件命名**：`AP1_Wirtschaft_Cloud_Berechnung.md`

---

### 📌 Zusammenfassung: Aufgabe 4 (Cloud, Make-or-Buy & Berechnungen)

#### 1. Cloud-Computing vs. On-Premises (Klassische Entscheidungsfrage)

* **On-Premises (Lokaler Betrieb im Unternehmen):**
* *Vorteile:* Volle Kontrolle über die Daten (*Datensouveränität*), keine Abhängigkeit vom Internet.
* *Nachteile:* Hohe Anfangsinvestitionen (*Investitionskosten / CAPEX*), eigener Aufwand für Hardware-Wartung, Backup und Strom.


* **Cloud-Computing (IaaS / SaaS):**
* *Vorteile:* Skalierbarkeit, geringe Startkosten (laufende Betriebskosten / OPEX), automatische Updates und Backups durch den Anbieter.
* *Nachteile:* Laufende monatliche Kosten, Abhängigkeit vom Internetprovider, Datenschutzbedenken (DSGVO-Compliance).



#### 2. Make-or-Buy-Entscheidung (Selbst machen oder einkaufen?)

* **Make (Eigenentwicklung / Interner Betrieb):**
* *Wann sinnvoll?* Wenn Kernkompetenzen geschützt werden sollen, langfristig günstiger bei hoher Auslastung.


* **Buy (Einkauf / Standardsoftware / Outsourcing):**
* *Wann sinnvoll?* Schnelle Verfügbarkeit, geringeres Projektrisiko, externe Experten nutzen, oft günstiger bei Standardaufgaben.


* *Prüfungs-Faktor:* Es wird fast immer eine einfache Kostenvergleichsrechnung (Fixkosten + variable Kosten mal Stückzahl) verlangt.

#### 3. Wichtige Berechnungsformeln (Prüfungs-Standard!)

* **Datenübertragungszeit ($t$):**
* **Formel:** $\text{Zeit } (t) = \frac{\text{Dateigröße (in Megabit / Gigabit)}}{\text{Übertragungsrate (Bandbreite in Mbit/s oder Gbit/s)}}$
* *Wichtiger Hinweis:* Unbedingt auf Einheiten achten! Oft ist die Dateigröße in Mega**Byte** (MB) angegeben, die Bandbreite aber in Mega**bit** (Mbit).
* *Umrechnung:* $1 \text{ Byte} = 8 \text{ Bits}$ (also MB $\times 8 =$ Mbit).

