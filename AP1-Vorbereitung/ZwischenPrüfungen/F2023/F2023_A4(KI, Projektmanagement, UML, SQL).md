
# 📑 Module: KI, Projektmanagement, UML & SQL (4. Aufgabe - c不用看了，abd要看的)

---

## 1. KI-Chatbots im Unternehmen (Wirtschaftliche & Soziale Aspekte)

| Aspekt | Vorteile (Vorteilskatalog) | Nachteile (Nachteilskatalog) |
| --- | --- | --- |
| **Wirtschaftlich** | • 24/7 Erreichbarkeit<br>

<br>• Geringere Betriebskosten<br>

<br>• Bearbeitung vieler Anfragen gleichzeitig | • Hohe Anschaffungskosten<br>

<br>• Komplexe Einbindung in die Systeme<br>

<br>• Ungeeignet bei komplexen Anfragen |
| **Sozial** | • Entlastung der Servicemitarbeiter<br>

<br>• Keine Warteschleife / Schnelligkeit<br>

<br>• Einfache Nutzung für Kunden | • Datenschutzbedenken<br>

<br>• Keine echte Entscheidungsfindung<br>

<br>• Nicht alle Kunden vertrauen Chatbots |

---

## 2. Projektmanagement: Lastenheft vs. Pflichtenheft

### ⚖️ Der goldene Unterschied (IHK-Merksatz)

* **Lastenheft:** Vom Auftraggeber (Kunde) erstellt. Beschreibt das **WAS** und die Anforderungen.
* **Pflichtenheft:** Vom Auftragnehmer (Entwickler) erstellt. Beschreibt das **WIE** und die technische Realisierung.

### 📋 Weitere Inhalte eines Lastenhefts

* Ausgangssituation
* Liste von Anforderungen
* Rahmenbedingungen & Qualitätsziele
* Beschreibung von Schnittstellen
* Zeitziele

---

## 3. UML-Klassenhierarchie & Vererbung

* **Prinzip:** Gemeinsame Attribute (`Neupreis`, `Baujahr`, etc.) und ggf. Methoden werden in einer gemeinsamen Oberklasse (**`Versicherungsobjekt`**) zusammengefasst, um Redundanz zu vermeiden.
* **Unterklassen:** `KFZ` und `Immobilie` erben von der Oberklasse und ergänzen ihre eigenen, spezifischen Eigenschaften und Methoden (z. B. `restwertBerechnen()`).
* **Pfeilrichtung:** Die Vererbung zeigt mit einer geschlossenen, weißen Spitze immer von der Unterklasse zur Oberklasse.

---

## 4. SQL-Datenbankabfragen (SELECT)

### 🔹 Fall a: Aggregatfunktion (Gesamtsumme)

* *Schlüsselwort für IHK:* Gesamtsumme $\rightarrow$ `SUM()`

```sql
SELECT SUM(Versicherungssumme) FROM KFZ_Versicherung;

```

### 🔹 Fall b: Komplexe Filterung (Datum, Betrag, Boolean)

* *Wichtige Syntax-Regeln:*
* Zahlen ohne Tausendertrennzeichen (`100000`).
* Boolean-Werte direkt zuweisen (`Garage = FALSE` oder `0`, niemals als String `'FALSE'`).



```sql
SELECT VID 
FROM KFZ_Versicherung 
WHERE Abschlussdatum BETWEEN '2022-05-01' AND '2022-05-31'
  AND versicherung_summe > 100000 
  AND Garage = FALSE;

```

