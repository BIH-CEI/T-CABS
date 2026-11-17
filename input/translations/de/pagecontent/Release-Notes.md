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

### v0.3.1 (in Entwicklung) — Draft Patch

**`fix`** iVAPS auf `475154` gewechselt; der Modus zielt auf die alveoläre Minutenventilation und nicht auf ein Tidalvolumen pro Atemzug, weshalb die volumengezielten Codes `475198` und `475155` ihn nicht beschreiben. `475198` entfällt

**`fix`** Anteil spontaner und mandatorischer Atemzüge nutzt die Codes `spont-breath-percent` und `mandatory-breath-percent` aus einem neuen T-CABS-CodeSystem statt des IEEE-Rate-Codes

**`fix`** Zehn Herstellerzuordnungen von Medianen und Maxima (ResMed, Löwenstein) von `equivalent` auf `wider` geändert, da die Zielcodes den Parameter selbst bezeichnen

**`fix`** Zielcodes korrigiert, die nicht zu ihrem Display passten: Nutzungsdauer (BREAS, ResMed, Löwenstein) nutzt jetzt den neuen T-CABS-Code `usage-duration` statt `68232`, eines Benachrichtigungstexts zu einem Schwellwert; Blutdruck bei Doccla zeigt auf die nicht-invasiven Codes `150020`/`150021`/`150022` statt auf die allgemeinen `150016`/`150017`/`150018`

### v0.3.0 (2026-09-17) — Draft

**`feature`** **DeviceAlert-Profile** in eine dreistufige Hierarchie überführt (Event- / Limit-Basisprofile) und zwei Ereignis-Alarme ergänzt: **Obstruktive Apnoe** (T-CABS-Custom-Code — IEEE 11073 hat dafür kein Partition-3-Ereignis) und **Leckage** (`198168 MDC_EVT_VENT_PAT_CIRCUIT_LEAK`)

**`feature`** Der DeviceAlert-Backport deckt den vollständigen R6-Elementsatz ab: `identifier`, `procedure`, `category`, `encounter`, `acknowledged`, `acknowledgedBy` und `location` auf Wurzelebene, `identifier`, `annunciator`, `type` und `period` innerhalb von `signal`

**`improve`** `alertIdentifier` und `alertProcedure` sind Must Support und in allen Alarm-Beispielen befüllt

**`improve`** `alertOccurrence` ist verpflichtend (1..1, Period)

**`fix`** Spontan-Modi (S) von `184353` auf `475162` gewechselt

**`fix`** PCV und Timed-Modi (T) von `475172` auf `475149` gewechselt; `475172` entfällt

**`fix`** PSV(AE) und autoST von `475198` auf `475154` bzw. `475197` gewechselt (`wider`)

**`feature`** Druckunterstützungsmodi bilden bedingt ab via `dependsOn` — `475154` bei zwingender Backup-Frequenz, `475162` bei abschaltbarer

**`feature`** BREAS `PCV(TgV)` und Löwenstein `PV-SIMV` ergänzt; insgesamt 44 Modus-Mappings

**`documentation`** Neuer Terminologies-Abschnitt zum Mapping-Attribut `backup-rate-mandatory`

**`improve`** Limit-Alarme tragen nur den generischen `MDC_EVT_HI`/`MDC_EVT_LO`-Marker — der Parameter wird über `alertDerivedFrom` identifiziert

**`improve`** DeviceAlert-**Signal-Codes an R6 angeglichen** und `alertDerivedFrom` als komplexe Extension modelliert (`observation`/`component`/`limit`)

**`fix`** Invariante **`tcabs-limit-direction`** ergänzt (HI ⇒ `limit.high`, LO ⇒ `limit.low`) mit Negativtest

**`feature`** Durchgängiges **Atemfrequenz-Beispiel** ergänzt — DeviceAlert → gemessene Observation → Geräte-Einstellung, verknüpft über die PoCD-Extension `relation` auf DeviceMetric-Ebene, mit Objektdiagramm

**`feature`** **5 weitere DeviceAlert-SearchParameters** ergänzt (11 gesamt)

**`improve`** **Patient-Profil** weiter minimiert — nur Geschlecht und Geburtsjahr verpflichtend, kein Name/keine Adresse

**`feature`** Seite **Metadata & FAIR** ergänzt (RDA- / FHIR-for-FAIR-Selbstbewertung)

---

### v0.2.1 (2026-05-22) — Draft Patch

**`fix`** Bindung der Limit-Alarme auf neuen, enger gefassten ValueSet (`VentilationLimitExceedanceCode`) umgestellt — die vorherige Umbrella-Bindung erlaubte semantisch ungültige Kombinationen

**`fix`** Identifizierende Codes in den drei Event-Alarm-Profilen als Pattern fixiert (Apnoe, Diskonnektion, Rebreathing)

**`fix`** Diverse Beispiel- und Code-Korrekturen: TidalvolumenAlarm HI/LO-Mismatch, Extension-URL-Tippfehler (`derivedFrom` → `derived-from`), fehlender `unknown`-Status-Code

**`improve`** DeviceAlerts zu beiden Beatmungs-Transaction-Bundles ergänzt (Rebreathing im Initial-, Atemfrequenz-HOCH im Follow-up-Bundle)

**`documentation`** Sektion *Alarm Categories* → *Alarm Detection Patterns* umbenannt (Sub-Begriffe *Specific-event* / *Limit-event*); veraltete R6-Element-Mapping-Tabelle korrigiert; Abschnitt *Ventilation Limit Exceedance Code* in Terminologies ergänzt; DeviceAlert-Sektion im deutschen Pagecontent ergänzt

---

### v0.2.0 (2026-04-30) — Draft

**`improve`** Parent des **Patient-Profils** geändert von `MII PR Person Patient` zu **`MII PR Person Patient (Pseudonymisiert)`** — keine Namen oder Adressen; Patienten werden ausschließlich über pseudonymisierte Identifier referenziert

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
