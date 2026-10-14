
### 🔑 第三题核心关键词 (Stichpunkte für Aufgabe 3)

* **`WPA-PSK vs. WPA-Enterprise (RADIUS)`**（无线网络认证方式对比）
* **`OSI-Schichtenmodell Fehlersuche`**（基于 OSI 模型的网络排错定位）
* **`MAC-Adresse & IPv6 Link-Local`**（物理硬件地址与本地 IPv6 地址特点）
* **`IP-Netzadresse & Broadcast`**（IP 子网基础判定）
* **`Ping-Befehl Analyse`**（网络连通性测试排错）
* **建议文件命名**：`AP1_Netzwerk_OSI_WLAN_IP.md`

---

### 📌 Zusammenfassung: Aufgabe 3 (Netzwerk, WLAN, OSI & IP)

#### 1. WLAN-Authentifizierung: PSK vs. Enterprise

* **WPA-PSK (Pre-Shared Key / Personal):**
* *Einsatz:* Kleine Netzwerke, Home-Office, kleine Büros.
* *Funktionsweise:* Alle Nutzer verwenden dasselbe Passwort (Schlüssel).


* **WPA-Enterprise (802.1X):**
* *Einsatz:* Große Unternehmen.
* *Funktionsweise:* Jeder Nutzer/Gerät authentifiziert sich individuell über einen zentralen Server (z. B. **RADIUS-Server** mit Zertifikaten oder Active Directory).



#### 2. OSI-Schichtenmodell in der Fehlersuche (Klassiker)

* **Schicht 1 (Sicherungsschicht / Physische Schicht):** Kabel defekt, Stecker nicht eingesteckt, WLAN-Signalstärke unzureichend.
* **Schicht 2 (Sicherungsschicht / Data Link):** MAC-Adresskonflikte, defekte Netzwerkkarte, Switch-Port-Problem.
* **Schicht 3 (Vermittlungsschicht / Network):** Falsche IP-Adresse, falsche Subnetzmaske, falsches Standard-Gateway.
* **Schicht 4 / Höhere Schichten (Transport & Anwendung):** Firewall blockiert Port, Dienst (z. B. DHCP oder DNS) gestoppt.

#### 3. MAC-Adresse & IPv6 Link-Local

* **MAC-Adresse:** Eindeutige, weltweit einmalige physikalische Hardware-Adresse der Netzwerkkarte (48 Bit / 6 Byte), ändert sich beim Wechsel des Netzwerks nicht.
* **IPv6 Link-Local-Adresse:** Beginnt immer mit `fe80::`, wird automatisch auf jedem Interface generiert und funktioniert **nur im selben lokalen Netzwerksegment** (wird nicht über Router hinweg weitergeleitet).

#### 4. Ping-Befehl & IP-Grundlagen

* **Ping (ICMP-Protokoll):** Testet, ob ein Zielrechner im Netzwerk erreichbar ist und wie hoch die Laufzeit (Latenz) ist.
* **Typische Ping-Fehlerursachen:**
* `Zielhost nicht erreichbar` (Destination Host Unreachable): Falsche IP/Subnetzmaske oder Router fehlt.
* `Zeitüberschreitung der Anforderung` (Request timed out): Firewall blockiert ICMP-Pakete oder Rechner ist offline.

