
## Aufgabe 3

**Keywords**: 
* loT(Internet of Things)
* IPv6 & IPv4
* Standortpräfix
* Subnet-ID
* Interface-ID
* Link-Local-Adresse
* Nutzwertanalyse


### a. Vergleich zwischen IPv4 und IPv6
 
| 比较维度 | IPv4（传统门牌号） | IPv6（下一代门牌号） | 比喻理解 |
| :--- | :--- | :--- | :--- |
| **地址数量** | 约 **43 亿** ($2^{32}$) | 约 **$3.4 \times 10^{38}$** ($2^{128}$) | IPv4 门牌号不够用了；IPv6 连地球上的每一粒沙子都能分到一个独立门牌号。 |
| **地址格式** | 点分十进制<br>`192.168.1.1` | 冒号十六进制<br>`2001:db8::1` | IPv4 是简短的纯数字；IPv6 地址更长、包含字母。 |
| **NAT 依赖** | **高度依赖 NAT** | **彻底取消 NAT** | IPv4 就像一个公司成百上千人**共用一个外部前台电话**；IPv6 给**每个人都发一部直拨专线**。 |
| **网络配置** | 依赖 DHCP 服务器分配，或手动输入 | 支持 **SLAAC**（无状态自动配置） | IPv4 需要手动“找网管要门牌号”；IPv6 做到真正的**即插即用**。 |
| **路由效率** | 变长协议头，路由需要频繁解析和转换 NAT | 固定精简头（40 字节），实现**端到端直连** | IPv4 包裹在每个转运站（NAT）都要拆包换贴纸；IPv6 直发直达，**传输延迟更低**。 |
| **网络安全** | IPsec 是后续补丁附加组件 | **原生内置 IPsec** | IPv4 类似给信件套加密信封（可选）；IPv6 出厂自带保密防护。 |


### b. IPv6-Adressierung & Subnetting

* 1. IPv6-Struktur (`/64`-Standard)
Ein IPv6-Netzwerk besteht aus **128 Bit** (8 Blöcke zu je 16 Bit):

| Komponente | Länge | Position | Funktion |
| :--- | :--- | :--- | :--- |
| **Standortpräfix** | **48 Bit** | Block 1–3 | Globale Adresse des Unternehmens (z. B. Krankenhaus) |
| **Teilnetz-ID (Subnet-ID)** | **16 Bit** | Block 4 | Interne Segmentierung (z. B. Stationen, IoT) |
| **Interface-ID** | **64 Bit** | Block 5–8 | Identifikator der einzelnen Netzwerkkarte / Komponente |

* 2. Regeln zur Adressformatierung
* **Ausschreiben (Ungekürzt):** Führende Nullen pro Block auffüllen (z. B. `da8` → `0da8`, `28` → `0028`).
* **Doppelpunkt (`::`):** Ersetzt aufeinanderfolgende Blöcke aus Nullen (`0000`).

* 3. Musterlösung zur Übungsaufgabe
* **Gegeben:** `2001:da8:5f2d:28::/64`
* **Ungekürzte Form:** `2001:0da8:5f2d:0028:0000:0000:0000:0000`
* **Ungekürztes Standortpräfix:**  2001:0da8:5f2d
* **Ungekürzte Teilnetz-ID:**     0028

### c. Standortpräfix & Standard-Netzwerkpräfix & Anzahl der Teilnetze
* **Standortpräfix** (48 Bit): Die globale Hausnummer Ihres Unternehmens im Internet.
* **Standard-Netzwerkpräfix** (64 Bit): Die feste Grenzlinie, die die IP-Adresse exakt in Netzwerkteil und Geräteteil halbiert.
* **Anzahl der Teilnetze**: Die Anzahl aller möglichen Subnetze ($2^{16} = 65.536$), die in der Lücke zwischen Standortpräfix und 64-Bit-Grenze entstehen.

### d. IPv6-Adressaufbau & Subnetting (Schema)

* 1. Ein IPv6-Präfix besteht aus **3 logischen Blöcken**:

$$\underbrace{\text{2001:0da8:5f2d}}_{\text{1. Standort-Präfix (3 Blöcke)}} : \underbrace{\text{0029}}_{\text{2. Teilnetz-ID (4. Block)}} :: \underbrace{\text{10}}_{\text{3. Interface-ID (Endgerät)}}$$

1. **Standort-Präfix (Blöcke 1–3):** Wird vom Provider/IHK vorgegeben und auf **alle** Geräte 1:1 übertragen (z. B. `2001:0da8:5f2d`).
2. **Teilnetz-ID (4. Block):** Das Subnetz (Trennungsprinzip!).
   * **Infrastruktur/Gateway-Netz:** z. B. `0028`
   * **IoT/Endgeräte-Netz:** z. B. `0029`
3. **Interface-ID (Ende):** Eindeutige Adresse des Geräts im Subnetz (z. B. `::1`, `::10`).


* 2. *Konfigurations-Übersicht (Tabelle)

| Gerät | IPv6-Adresse | Default-Gateway | Anmerkung |
| :--- | :--- | :--- | :--- |
| **Router (Gateway)** | `2001:0da8:5f2d:0028::1` | *(keins)* | Schnittstelle im Netzinfrastruktur-Subnetz (`0028`) |
| **Sensor** | `2001:0da8:5f2d:0029::10` | **`2001:0da8:5f2d:0028::1`** | Endgeräte-Subnetz (`0029`), eingetragenes Gateway = Router-IP |
| **Steuerung** | `2001:0da8:5f2d:0029::11` | **`2001:0da8:5f2d:0028::1`** | Endgeräte-Subnetz (`0029`), eingetragenes Gateway = Router-IP |
| **Industrie-PC** | `2001:0da8:5f2d:0029::12` | **`2001:0da8:5f2d:0028::1`** | Endgeräte-Subnetz (`0029`), eingetragenes Gateway = Router-IP |

* 3. Goldene Regeln für die IHK-Prüfung

* **Regel 1 (Gateway):** Alle Endgeräte im Netz tragen **dieselbe Router-IP** als Gateway ein.
* **Regel 2 (Subnetz):** Alle Endgeräte am selben Switch teilen sich **denselben 4. Block** (`0029`).
* **Regel 3 (Eindeutigkeit):** Die **Interface-ID** (letzter Block) darf innerhalb eines Subnetzes nur **einmal** vorkommen.


### e. Konfigurations- und Erreichbarkeitsprüfung

* Loopback-Test (`ping ::1`):
Überprüft erfolgreich die Funktionsfähigkeit des eigenen TCP/IP-Protokollstapels und der Netzwerkkarten-Treiber auf dem IoT-Gerät.

* Gateway-Test (`ping 2001:da8:5f2d:29::1`):
Überprüft die physische Kabelverbindung, die Switch-Port-Zuordnung sowie die Layer-2/Layer-3-Erreichbarkeit des lokalen Routers im Teilnetz.

* Fazit:
Verlaufen beide Tests positiv, ist das IoT-Gerät lokal korrekte konfiguriert und bereit für die grenzüberschreitende Kommunikation/Remote-Wartung über den Router.

### f. Link-Local-Adresse

  DieseAdressen werden nach kurzer Zeit vom Netzwerkadapter selbst zugewiesen,wenn keine manuelleAdressvergabeodereineZuweisungdurch DHCPerfolgtist.

### g. Nutzwertanalyse
