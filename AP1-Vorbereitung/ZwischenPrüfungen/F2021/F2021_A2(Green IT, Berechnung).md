
# 📑 Cheat Sheet: Energieeffizienz, Elektro-Sicherheit & Skripting (AP1)

---

## 📌 1. Energiekosten & Wirkungsgrad

* **Wirkungsgrad-Formel:**
$$\text{Leistung (Netz in Watt)} = \frac{\text{Benötigte Komponenten-Leistung}}{\text{Wirkungsgrad (Dezimalzahl)}}$$


* **Energiekosten-Formel:**
$$\text{Kosten (€)} = \frac{\text{Leistung (W)} \times \text{Betriebsstunden (h)}}{1000} \times \text{Preis (€/kWh)}$$



---

## 📌 2. Amortisationsdauer (Geld-Rückfluss)

* **Formel:**
$$\text{Amortisationsdauer (Monate)} = \frac{\text{Mehrkosten der Anschaffung (€)}}{\text{Monatliche Ersparnis (€)}}$$


* **IHK-Regel:** Ergebnisse bei Monaten immer **aufrunden** (z. B. $30{,}58 \rightarrow \mathbf{31\text{ Monate}}$).

---

## 📌 3. Elektrotechnischer Lastnachweis (Eiserne Regel)

* **Standard-Netzspannung in DE ($U$):** $230\text{ V}$
* **Max. Stromstärke Steckdose ($I$):** $16\text{ A}$
* **Max. Belastbarkeit ($P_{\max}$):**
$$P_{\max} = 230\text{ V} \times 16\text{ A} = \mathbf{3680\text{ Watt}}$$


* **Prüfungs-Schema:** Summe aller Geräte-Leistungen ($P_{\text{gesamt}}$) berechnen.
Wenn $P_{\text{gesamt}} > 3680\text{ W} \rightarrow$ **Überlastung! Geräte können nicht gleichzeitig betrieben werden.**

---

## 📌 4. Powershell / Skript-Logik (Korrektur-Fokus)

* **Prozentberechnung:** Im Skript immer $* 100$ prüfen ($* 1000$ ist ein typischer Fehler).
* **Vergleichsoperatoren:**
* `-lt` (less than / kleiner als) $\rightarrow$ Für Schwellenwert-Warnungen (z. B. $< 15\%$).
* `-gt` (greater than / größer als)

