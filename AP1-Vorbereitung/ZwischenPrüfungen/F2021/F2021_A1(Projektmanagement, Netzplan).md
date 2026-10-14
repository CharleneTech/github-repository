
# 📑 Cheat Sheet: Projektmanagement & Netzplan (AP1)

---

## 📌 1. Merkmale eines Projekts

> **IHK-Klassiker (mindestens 4 Merkmale nennen):**

* **Neuartigkeit & Einmaligkeit** (Abgrenzung zur normalen Routinearbeit)
* **Konkrete Zielvorgabe(n)**
* **Zeitbegrenzung** (Fester Anfangs- und Endtermin)
* **Ressourcenbegrenzung** (Begrenztes Budget und Personal)
* **Komplexität & Größe**

---


## 📌 2. SMART-Kriterien (Zielformulierung)

* **S**pezifisch / Specific (Eindeutig und präzise formuliert)
* **M**essbar / Measurable (Anhand von Kriterien überprüfbar)
* **A**kzeptiert / Attraktiv / Accepted (Von den Beteiligten getragen)
* **R**ealistisch / Relevant / Reasonable (Machbar und sinnvoll)
* **T**erminiert / Time-bound (Klares Enddatum / Frist)

---

## 📌 3. Netzplan-Formeln & Berechnungen

* **Vorwärtsrechnung (Bestimmung von FAZ & FEZ):**
* $FEZ = FAZ + Dauer$
* *Wichtig bei mehreren Vorgängern:* Der **höchste** $FEZ$ der Vorgänger wird zum $FAZ$ des aktuellen Vorgangs.


* **Rückwärtsrechnung (Bestimmung von SAZ & SEZ):**
* $SAZ = SEZ - Dauer$
* *Wichtig bei mehreren Nachfolgern:* Der **niedrigste** $SAZ$ der Nachfolger wird zum $SEZ$ des aktuellen Vorgangs.


* **Pufferzeiten:**
* **Gesamtpuffer (GP)** $= SAZ - FAZ$ (oder $= SEZ - FEZ$) $\rightarrow$ *Maximal zulässige Verzögerung ohne Projektabbruch/Verzögerung.*
* **Freier Puffer (FP)** $= FAZ_{Nachfolger} - FEZ_{aktuell}$ $\rightarrow$ *Verzögerung, ohne die nachfolgenden Vorgänge zu beeinflussen.*



---

## 📌 4. Kritischer Pfad & Verzögerungsanalyse

* **Kritischer Pfad:**
* **Definition:** Die Verbindung aller Vorgänge mit **$GP = 0$ und $FP = 0$**.
* **Eiserne Regel:** Jede Verzögerung auf dem kritischen Pfad verlängert das **gesamte Projektende** um genau diese Zeit.


* **Analyse von Verzögerungen (Antwort-Schema):**
1. Puffer des betroffenen Vorgangs prüfen ($GP$ / $FP$).
2. **Verzögerung $\le$ Puffer:** Keine Auswirkung auf das Projektende (wird abgefangen).
3. **Vorgang auf dem kritischen Pfad (Puffer = 0):** Das Projektende verschiebt sich um die exakte Verzögerungszeit.


