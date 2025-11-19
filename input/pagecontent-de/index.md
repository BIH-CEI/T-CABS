Der T-CABS (Telemedizinisches Centrum für Außerklinische Beatmung und Sauerstofftherapie) Implementation Guide definiert FHIR R4 Profile und Standards für die Übertragung und den Austausch von Beatmungs- und Vitalparametern in der häuslichen Beatmungstherapie.

### Ziel des Implementation Guide

Dieser IG ermöglicht die standardisierte, interoperable Übertragung von Gesundheitsdaten aus der häuslichen Beatmungstherapie zwischen verschiedenen Systemen und Herstellern. Die Auswahl der Inhalte wurden innerhalb des CABS definiert und vorgegeben. Es werden einheitliche FHIR-Profile definiert für:

- Beatmungsparameter von Beatmungsgeräten
- Vitalparameter von Personal Health Devices (PHD)
- Klinische Workflows für telemedizinische Visiten

Um internationale Interoperabilität sicherzustellen wurde auf bestehende Vorarbeiten aufgebaut. Diese Vorarbeiten bestehen größtenteils aus den Implementierungsleitfäden [Point-of-Care Devices (PoCD) FHIR Implementation Guide](https://hl7.org/fhir/uv/pocd/2021Sep/index.html)in der Version 0.3.0 und dem [Personal Health Device (PHD) FHIR Implementation Guide](https://hl7.org/fhir/uv/phd/STU1.1/index.html) in der Version 1.1.0, der [HL7 Working Group Devices](https://confluence.hl7.org/spaces/HCD/overview).
Die allgemeinen Profile in diesem Implementierungsleitfaden basieren zum Teil auf Spezifikationen der MII und/oder es wurde die Kompatibilität zu diesen und weiteren nationalen Spezifikationen (ISiK) angestrebt.

Ein weiteres Ziel ist eine einheitliche und herstellerunabhängige Datenbasis aufzubauen, die die Voraussetzung für interoperable Auswertungen und die Entwicklung prädiktiver Modelle schafft.

### Zielgruppen

**Primäre Zielgruppen:**
- Hersteller von Beatmungsgeräten
- Hersteller von Vitalparameter-Messgeräten

**Sekundäre Zielgruppen:**
- Softwareentwickler für Gesundheitsplattformen
- Systemintegratoren für telemedizinische Lösungen

Die Beispielinstanzen sind stets konkreten Herstellern zugeordnet, dies stellt jedoch keine inhaltliche Vorgabe oder Einschränkung dar sondern dient nur der exemplarischen Darstellung.

### Struktur des Implementation Guide

1. Informationsmodell: Beinhaltet ein UML über alle erstellten T-CABS-Profile und ihre Beziehungen (Referenzen) zueinander  
2. Profile: Grafische Darstellung der Profile* 
3. Beispiele: Grafische Darstellung der Beispiele* 
4. Implemantation: Detaillierte Beschreibung der einzelnen Vorgaben innerhalb der Profile und der Beziehungen zueinander*

*Der vorliegende Implementation Guide ist in drei Domänen gegliedert, die unterschiedliche Aspekte der telemedizinischen Versorgung in der außerklinischen Beatmung abbilden:
 
- Vitaldaten – Erfassung und Übermittlung physiologischer Messwerte
 
- Beatmungsdaten – Beschreibung gerätespezifischer Beatmungseinstellungen und Messwerte
 
- Domänenübergreifende Profile – administrative, organisatorische und dokumentationsrelevante Ressourcen, die in allen Bereichen verwendet werden 

Der Begriff „Domäne“ beziechnet eine thematische Gruppe von Profilen, die funktional zusammengehören. 

### Projektkontext T-CABS

[Projektwebseite](https://t-cabs.charite.de/)

Das Telemedizinische Centrum für Außerklinische Beatmung und Sauerstofftherapie verfolgt das übergeordnete Projektziel der Reduktion von ungeplanten Kontakten zum Gesundheitssystem, Krankenhaustagen, Ambulanzterminen, Krankentransporten und somit der Gesundheitskosten.

Dies soll mittels telemedizinischer Betreuung erreicht werden durch:

1. Steigerung der Therapieadhärenz gegenüber der Beatmungstherapie
2. Stabilisierung der pulmonalen Funktion und Verbesserung der körperlichen Kondition
3. Erhöhung der Lebensqualität, Selbstbestimmung und Anwendungssicherheit bei Patienten
4. Verbesserung der sektorenübergreifenden Zusammenarbeit und Kommunikation
5. Entwicklung und Erprobung diagnostischer Signaturen mittels maschinellen Lernens

**Kontakt:**
- Technische Fragen oder Anmerkungen: thimo-andre.hoelter[at]charite.de oder [Github Issues](https://github.com/BIH-CEI/T-CABS/issues)
- Organisatorische Fragen: t-cabs[at]charite.de

{% include img.html img="T-CABS_Logo.png" %}