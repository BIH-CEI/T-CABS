Diese Seite dokumentiert die in diesem Implementation Guide verwendeten **computablen Metadaten** und enthält eine **informative FAIR-Selbstbewertung**. Die Bewertung bildet ausgewählte Metadaten dieses IG auf die Indikatoren des [RDA FAIR Data Maturity Models](https://doi.org/10.15497/rda00050) ab und folgt der HL7-[FHIR-for-FAIR](https://build.fhir.org/ig/HL7/fhir-for-fair/)-Interpretation.

> **Hinweis:** Diese Seite ist informativ und vorläufig. Die beschriebenen Metadaten sind **deskriptiv** und ändern die klinischen oder technischen Konformitätsanforderungen des IG nicht. Sie dokumentiert den *aktuellen* Stand und kann weiterentwickelt werden, wenn der IG in Richtung formaler Publikation geht.

### Geltungsbereich

Die Selbstbewertung umfasst die **Metadaten und Konformitätsartefakte** des IG (die `ImplementationGuide`-Ressource und die enthaltenen `StructureDefinition`-, `ValueSet`-, `CodeSystem`-, `ConceptMap`-, `CapabilityStatement`- und `SearchParameter`-Ressourcen) sowie die mitgelieferten **Beispielinstanzen**. Der IG verwaltet selbst keine Produktivdaten; die FAIRness der von einem bereitgestellten T-CABS-konformen Server ausgetauschten Daten hängt von dieser Implementierung ab und ist hier außerhalb des Geltungsbereichs. Die Bewertung unterscheidet daher zwischen **IG-Metadaten / Konformitätsartefakten** und **Beispiel-/Testdaten** in diesem IG.

### Implementierte IG-Metadaten

| Metadatum | Wert | FHIR-Position |
|---|---|---|
| Canonical-URL | `https://bih-cei.github.io/T-CABS` | `ImplementationGuide.url` |
| Package-ID | `t-cabs` | `ImplementationGuide.packageId` |
| Version | `0.3.0` (SemVer) | `ImplementationGuide.version` |
| Status | `draft` | `ImplementationGuide.status` |
| FHIR-Version | `4.0.1` (R4) | `ImplementationGuide.fhirVersion` |
| Lizenz | `CC-BY-4.0` (SPDX-Code) | `ImplementationGuide.license` |
| Herausgeber | Berlin Institute of Health at Charité (BIH-CEI) | `ImplementationGuide.publisher` / `.contact` |
| Jurisdiktion | `urn:iso:std:iso:3166#DE` (Deutschland) | `ImplementationGuide.jurisdiction` |
| Abhängigkeiten (fixiert) | MII KDS Basis 2026.0.0, PHD 2.0.0, PoCD 0.3.0, de.basisprofil.r4 1.5.4 | `ImplementationGuide.dependsOn` |
| Capability-Deklaration | T-CABS Server CapabilityStatement | `CapabilityStatement` |
| Terminologie-Bindings | LOINC, SNOMED CT, ISO/IEEE 11073-10101, UCUM, T-CABS lokal | `ValueSet` / `CodeSystem` / Element-Bindings |

### Versionierung und Package-Provenance

- **Versionierungs-Algorithmus:** Semantic Versioning (`major.minor.patch`).
- **Versionshistorie:** geführt in `package-list.json` (z.B. 0.1.0 → 0.2.0 → 0.2.1 → 0.3.0).
- **Dependency-Pinning:** alle vier Upstream-IGs sind auf feste Versionen fixiert (nicht `current`), für reproduzierbare Builds.
- **Package-Source / Provenance:** das veröffentlichte Package stammt aus dem T-CABS-Quell-Repository; die IG-/Artefakt-Provenance wird über Herausgeber, Copyright und Versionshistorie getragen.

### Bezug zu FAIR (Selbstbewertung)

Die Tabellen bilden ausgewählte RDA-FAIR-Data-Maturity-Indikatoren darauf ab, wie dieser IG sie adressiert. **-M** = Metadaten-Indikator, **-D** = Daten-Indikator. Bei Daten-(**-D**)-Indikatoren bezieht sich die Bewertung auf die mitgelieferten **Beispiel-/Testinstanzen**; diese demonstrieren die relevanten FHIR-Muster, werden aber nicht als persistenter FAIR-Datensatz deklariert. Offene Punkte sind explizit markiert.

#### Findable

| ID | Indikator | Priorität | In T-CABS adressiert durch |
|---|---|---|---|
| RDA-F1-01M | Metadaten werden durch einen persistenten Identifier identifiziert | Essenziell | Für IG-Metadaten und Konformitätsartefakte: kanonische `url`-Werte, Package-ID `t-cabs`, Package-Version |
| RDA-F1-01D | Daten werden durch einen persistenten Identifier identifiziert | Essenziell | Für Beispiel-/Testdaten: `Resource.id`, `Bundle.identifier`, `identifier`-Elemente und `Bundle.entry.fullUrl` demonstrieren Identifikationsmuster (nicht als persistente Daten-PIDs deklariert) |
| RDA-F1-02M | Metadaten werden durch einen global eindeutigen Identifier identifiziert | Essenziell | Für IG-Metadaten und Konformitätsartefakte: kanonische URLs sind konstruktionsbedingt global eindeutig |
| RDA-F1-02D | Daten werden durch einen global eindeutigen Identifier identifiziert | Essenziell | Für Beispiel-/Testdaten: Muster mit `identifier.system` + `identifier.value` demonstrieren global abgegrenzte Identifikation |
| RDA-F2-01M | Reichhaltige Metadaten zur Auffindbarkeit | Essenziell | IG-Metadaten, profilierte `StructureDefinition`s, `meta`, narrative Doku, `SearchParameter`s |
| RDA-F3-01M | Metadaten enthalten den Identifier der Daten | Essenziell | In Profilen erzwungene `Reference`-/Canonical-Verknüpfungen |
| RDA-F4-01M | Metadaten sind harvest- und indexierbar | Essenziell | Veröffentlichter IG (HTML + `.tgz`); `CapabilityStatement`; **teilweise** — Eintrag im FHIR Package Registry ausstehend |

#### Accessible

| ID | Indikator | Priorität | In T-CABS adressiert durch |
|---|---|---|---|
| RDA-A1-02M | Metadaten sind manuell zugänglich | Essenziell | IG-Website (veröffentlichte IG-Seiten) |
| RDA-A1-02D | Daten sind manuell zugänglich | Essenziell | Für Beispiel-/Testdaten: Beispielressourcenseiten und generierte JSON/XML-Dateien sind über den IG verfügbar |
| RDA-A1-03M | Metadaten-Identifier löst zu einem Metadatensatz auf | Essenziell | Kanonische Artefakt-URLs lösen zu veröffentlichten Artefaktseiten auf |
| RDA-A1-03D | Daten-Identifier löst zu einem digitalen Objekt auf | Essenziell | Für Beispiel-/Testdaten: Beispielseiten und herunterladbare JSON/XML-Dateien ermöglichen Zugriff |
| RDA-A1-04M | Metadaten über standardisiertes Protokoll zugänglich | Essenziell | HTTPS + FHIR REST |
| RDA-A1-04D | Daten über standardisiertes Protokoll zugänglich | Essenziell | Für Beispiel-/Testdaten: Beispiele als FHIR JSON/XML über HTTPS und über das FHIR Package herunterladbar |
| RDA-A1-05D | Daten können automatisch abgerufen werden | Wichtig | Für Beispiel-/Testdaten: herunterladbare JSON/XML-Ressourcen und das Beispiel-Transaktions-`Bundle` unterstützen automatisiertes Tooling |
| RDA-A1.1-01M | Metadaten über freies/offenes Protokoll zugänglich | Essenziell | HTTP/FHIR (offen, frei implementierbar) |
| RDA-A1.1-01D | Daten über freies/offenes Protokoll zugänglich | Wichtig | Für Beispiel-/Testdaten: Beispiele über HTTPS und das FHIR Package zugänglich |
| RDA-A1.2-01D | Daten-Protokoll unterstützt Authentifizierung/Autorisierung | Nützlich | Der `CapabilityStatement` deklariert eine OAuth2-Security-Erwartung (`rest.security`); volle SMART-on-FHIR-/Deployment-Details sind implementierungsabhängig |
| RDA-A2-01M | Metadaten bleiben verfügbar, auch wenn Daten nicht mehr verfügbar sind | Essenziell | IG-Metadaten werden unabhängig von Dateninstanzen veröffentlicht |

#### Interoperable

| ID | Indikator | Priorität | In T-CABS adressiert durch |
|---|---|---|---|
| RDA-I1-01M | Metadaten nutzen eine standardisierte Wissensrepräsentation | Wichtig | FHIR R4 (JSON/XML) |
| RDA-I1-01D | Daten nutzen eine standardisierte Wissensrepräsentation | Wichtig | Für Beispiel-/Testdaten: Beispiele sind FHIR-R4-Ressourcen |
| RDA-I1-02M | Metadaten sind maschinenverständlich | Wichtig | FHIR-strukturierte Ressourcen, profiliert und kodiert |
| RDA-I1-02D | Daten sind maschinenverständlich | Wichtig | Für Beispiel-/Testdaten: Beispiele nutzen kodierte Elemente, Referenzen, Identifier und deklarierte Profile |
| RDA-I2-01M | Metadaten nutzen FAIR-konforme Vokabulare | Wichtig | Terminologie-Bindings auf LOINC, SNOMED CT, ISO/IEEE 11073-10101, UCUM |
| RDA-I2-01D | Daten nutzen FAIR-konforme Vokabulare | Nützlich | Für Beispiel-/Testdaten: Beispiele nutzen die gebundenen ValueSets / CodeSystems |
| RDA-I3-01M | Metadaten enthalten Referenzen auf andere Metadaten | Wichtig | Canonical-Referenzen zwischen Profilen, ValueSets, CodeSystems, ConceptMaps |
| RDA-I3-01D | Daten enthalten Referenzen auf andere Daten | Nützlich | Für Beispiel-/Testdaten: Beispiele nutzen FHIR-`Reference`-Elemente zwischen Ressourcen |
| RDA-I3-02D | Daten enthalten qualifizierte Referenzen auf andere Daten | Nützlich | Für Beispiel-/Testdaten: typisierte FHIR-Elemente demonstrieren qualifizierte Referenzen |
| RDA-I3-03M | Metadaten enthalten qualifizierte Referenzen auf andere Metadaten | Wichtig | Typisierte/qualifizierte `Reference`s und Bindings innerhalb des IG |

#### Reusable

| ID | Indikator | Priorität | In T-CABS adressiert durch |
|---|---|---|---|
| RDA-R1-01M | Vielzahl genauer, relevanter Attribute für Nachnutzung | Essenziell | Reichhaltige IG- und Ressourcen-Metadaten, Profile, Doku |
| RDA-R1.1-01M | Metadaten enthalten Lizenzinformationen | Essenziell | `license = CC-BY-4.0` |
| RDA-R1.1-02M | Metadaten verweisen auf eine Standard-Nachnutzungslizenz | Wichtig | CC-BY-4.0 (Creative-Commons-Standardlizenz) |
| RDA-R1.1-03M | Metadaten verweisen auf eine maschinenverständliche Lizenz | Wichtig | `ImplementationGuide.license` trägt den **SPDX**-Code `CC-BY-4.0` |
| RDA-R1.2-01M | Metadaten enthalten Provenance (Community-Standard) | Wichtig | IG-/Artefakt-Provenance über Versionshistorie (`package-list.json`), Herausgeber, Copyright und `date` |
| RDA-R1.3-01M | Metadaten erfüllen einen Community-Standard | Essenziell | FHIR R4; PoCD/PHD/MII-Konventionen; IEEE-11073-Nomenklatur |
| RDA-R1.3-01D | Daten erfüllen einen Community-Standard | Essenziell | Für Beispiel-/Testdaten: Beispiele deklarieren T-CABS-Profile und demonstrieren Konformitätserwartungen |
| RDA-R1.3-02M | Metadaten in maschinenverständlichem Community-Standard ausgedrückt | Essenziell | `StructureDefinition` / `ImplementationGuide` / `CapabilityStatement` |
| RDA-R1.3-02D | Daten in maschinenverständlichem Community-Standard ausgedrückt | Wichtig | Für Beispiel-/Testdaten: FHIR-R4-Beispiele, deklarierte Profile, Terminologieressourcen und der `CapabilityStatement` |

### Praktische Nutzung

- **Zitieren/Referenzieren** des IG über seinen Canonical `https://bih-cei.github.io/T-CABS` und eine konkrete `version`.
- **Nachnutzung** ist durch **CC-BY-4.0** geregelt (Namensnennung erforderlich).
- **Installation** des FHIR-Packages über die Package-ID `t-cabs`, sobald in einem Registry veröffentlicht; bis dahin die `.tgz` aus dem IG-Output beziehen.
