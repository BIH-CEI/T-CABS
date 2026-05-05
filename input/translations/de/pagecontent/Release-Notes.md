### Versionierung

Dieser IG folgt [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** — inkompatible Änderungen an normativem Inhalt (Profilstruktur, Kardinalität, Terminologie-Bindings)
- **MINOR** — neue Profile, Extensions, Beispiele oder rückwärtskompatible Verbesserungen
- **PATCH** — Korrekturen von Fehlern in normativem Inhalt (falsche Codes, fehlerhafte Constraints)

Versionen `0.x.y` kennzeichnen die initiale Entwicklungsphase — die Spezifikation ist noch nicht stabil. Version `1.0.0` markiert das erste stabile Release nach Expertenreview und formaler Publikation.

Jede Änderung wird mit einer der folgenden Kategorien versehen:

- **`feature`** — neuer Inhalt (Profile, Extensions, Beispiele, Ressourcen)
- **`improve`** — Verfeinerung oder Erweiterung bestehenden normativen Inhalts
- **`fix`** — Korrektur von Fehlern in normativem Inhalt (Profile, Codes, Beispiele)
- **`documentation`** — Dokumentationsänderungen ohne Auswirkung auf normative Aspekte

---

### v0.2.0 (2026-04-30) — Draft

**`improve`** Parent des **Patient-Profils** geändert von `MII PR Person Patient` zu **`MII PR Person Patient (Pseudonymisiert)`** — keine Namen, Adressen oder Geburtsdaten; Patienten werden ausschließlich über pseudonymisierte Identifier referenziert

**`fix`** Korrektur von **7 IEEE 11073 Codes**:
  - **PEEP**: 152720 → **151976**
  - **I:E-Verhältnis**: 153500 → **151832**
  - **Getriggerte Atemzüge**: 152498 → **152538**
  - **Atemfrequenz (vital)**: 152490 → **151562**
  - **Tägliche Schrittzahl**: IEEE 8454247 entfernt
  - **Handgriffstärke**: IEEE 8455547 entfernt
  - **PHD Dynamometer**: 69876 → **528426**, **PHD Spirometer**: 69680 → **528413**

**`fix`** **SpO2** umbenannt von "Arterielle SPO2" zu **"SPO2 (Pulsoxymetrie)"**, IEEE 160300 entfernt, `method` SNOMED 252465000 ergänzt, bodySite entfernt

**`fix`** **Gehstrecke** umbenannt zu **"Tägliche Schrittzahl"**

**`improve`** IEEE-Codes zu **Blutdruck**-Komponenten ergänzt: Systolisch (150021), Diastolisch (150022)

**`improve`** **PHD-IG-Abhängigkeit** von 1.1.0 auf **2.0.0** aktualisiert

**`improve`** PHG Device: unterstützte PHD-Typen verschoben von `property` nach `specialization`

**`improve`** Alle ConceptMap-Kommentare mit Review-Status aktualisiert: "Reviewed (consensus). Code confirmed." für bestätigte Codes, Korrekturdetails für geänderte Codes

**`feature`** **8 DeviceAlert-Profile** ergänzt — Backport des FHIR-R6 DeviceAlert nach R4 mit `Basic` als Trägerressource und Extensions
  - Abstraktes Basisprofil `T_CABS_DeviceAlert` plus 7 spezifische Alarmprofile: Druck, Tidalvolumen, Minutenvolumen, Atemfrequenz, Apnoe, Diskonnektion, Rebreathing

**`feature`** **11 Extensions** ergänzt, die alle R6-DeviceAlert-Elemente abbilden (status, code, presence, occurrence, limit, type, priority, device, derivedFrom, label, signal)

**`feature`** **2 CodeSystems** ergänzt: `T_CABS_CodeSystem_DeviceAlert` und `T_CABS_CodeSystem_VentilationAlarm`

**`feature`** **7 ValueSets** für DeviceAlert ergänzt (status, type, priority, signal activation/presence/manifestation, Beatmungsalarm-Codes)

**`feature`** **5 ConceptMaps** für Hersteller-Mappings ergänzt:
  - BREAS, ResMed, Löwenstein, Doccla → IEEE 11073 (Parameter-Codes, 4 Maps)
  - Beatmungsmodi → IEEE 11073 (BREAS/Löwenstein/ResMed, 1 Map)

**`feature`** **6 SearchParameters** ergänzt: Observation nach Geräte-Seriennummer, Procedure nach Beatmungsmodus/-form, DeviceAlert nach Type/Priorität/Code

**`feature`** **4 Beispiel-Transaction-Bundles** ergänzt: Beatmungs- und Vitaldaten, jeweils Initial- und Follow-up-Variante

**`feature`** **CapabilityStatement** ergänzt mit OAuth-Security und Unterstützung aller Ressourcentypen

**`improve`** Procedure-Profil vereinfacht: komplexes Slicing auf `category.coding` und `code.coding` entfernt, durch direkte Required-ValueSet-Bindings ersetzt

**`documentation`** Monolithisches UML-Diagramm in **zwei domänenspezifische Diagramme** aufgeteilt: [Vitaldaten-Informationsmodell](Vital-Data-Model.html) und [Beatmungsdaten-Informationsmodell](Ventilation-Data-Model.html). Das ursprüngliche Kombi-Diagramm ist durch eine Hub-Seite ersetzt ([Informationsmodell](Information-Model.html)), die auf beide Detail-Diagramme und das Logical Model verweist

**`feature`** **Mehrsprachigkeit** ergänzt (Englisch als Default, Deutsch als Übersetzung) — Sprach-Switcher im Seitenkopf, übersetzte Pagecontent unter `input/translations/de/pagecontent/`

---

#### v0.1.0 (2025-10-06) — Initial Draft

**`feature`** 33 FHIR StructureDefinitions für domänenübergreifende, Vital- und Beatmungsdaten-Profile

**`feature`** 71 validierte Beispielinstanzen

**`feature`** IEEE-11073-konforme Device-Hierarchie (MDS, VMD, Channel, DeviceMetric)

**`feature`** 11 Beatmungsparameter und 13 Vitalparameter

**`feature`** Vollständiger klinischer Workflow: Patient, Devices, Observations, Encounter, DiagnosticReport

**`feature`** Terminologie-Bindings: LOINC, IEEE 11073, SNOMED CT, UCUM

**`documentation`** CC-BY-4.0-Lizenz
