### Versioning

This IG follows [Semantic Versioning 2.0.0](https://semver.org/):

- **MAJOR** — incompatible changes to normative content (profile structure, cardinality, terminology bindings)
- **MINOR** — new profiles, extensions, examples, or backward-compatible improvements
- **PATCH** — fixes to errors in normative content (wrong codes, incorrect constraints)

Versions `0.x.y` indicate initial development — the specification is not yet stable. Version `1.0.0` will mark the first stable release after expert review and formal publication.

Each change is tagged with one of the following categories:

- **`feature`** — new content (profiles, extensions, examples, resources)
- **`improve`** — refinement or extension of existing normative content
- **`fix`** — correction of errors in normative content (profiles, codes, examples)
- **`documentation`** — documentation changes with no impact on normative aspects

---

### v0.2.0 (2026-04-30) — Draft

**`improve`** Changed **Patient profile** parent from `MII PR Person Patient` to **`MII PR Person Patient (Pseudonymisiert)`** — no names, addresses, or dates of birth; patients identified by pseudonymized identifier only

**`fix`** Corrected **7 IEEE 11073 codes**:
  - **PEEP**: 152720 → **151976**
  - **I:E Ratio**: 153500 → **151832**
  - **Triggered Breaths**: 152498 → **152538**
  - **Respiratory Rate (vital)**: 152490 → **151562**
  - **Daily Step Count**: IEEE 8454247 removed
  - **Hand Grip Strength**: IEEE 8455547 removed
  - **PHD Dynamometer**: 69876 → **528426**, **PHD Spirometer**: 69680 → **528413**

**`fix`** Renamed **SpO2** from "Arterielle SPO2" to **"SPO2 (Pulse Oximetry)"**, IEEE 160300 removed, added `method` SNOMED 252465000, removed bodySite

**`fix`** Renamed **Gehstrecke** to **"Daily Step Count"**

**`improve`** Added IEEE codes to **Blood Pressure** components: systolic (150021), diastolic (150022)

**`improve`** Upgraded **PHD IG dependency** from 1.1.0 to **2.0.0**

**`improve`** PHG Device: supported PHD types moved from `property` to `specialization`

**`improve`** Updated all ConceptMap comments with review status: "Reviewed (consensus). Code confirmed." for confirmed codes, correction details for changed codes

**`feature`** Added **8 DeviceAlert profiles** backporting FHIR R6 DeviceAlert to R4 using `Basic` as carrier resource with extensions
  - Abstract base profile `T_CABS_DeviceAlert` plus 7 specific alarm profiles: Pressure, Tidal Volume, Minute Volume, Respiratory Rate, Apnea, Disconnection, Rebreathing

**`feature`** Added **11 extensions** mapping all R6 DeviceAlert elements (status, code, presence, occurrence, limit, type, priority, device, derivedFrom, label, signal)

**`feature`** Added **2 CodeSystems**: `T_CABS_CodeSystem_DeviceAlert` and `T_CABS_CodeSystem_VentilationAlarm`

**`feature`** Added **7 ValueSets** for DeviceAlert (status, type, priority, signal activation/presence/manifestation, ventilation alarm codes)

**`feature`** Added **5 ConceptMaps** for manufacturer mappings:
  - BREAS, ResMed, Löwenstein, Doccla → IEEE 11073 (parameter codes, 4 maps)
  - Ventilation Modes → IEEE 11073 (BREAS/Löwenstein/ResMed, 1 map)

**`feature`** Added **6 SearchParameters**: Observation by device serial, Procedure by ventilation mode/form, DeviceAlert by type/priority/code

**`feature`** Added **4 example Transaction Bundles**: Ventilation + Vital Data, each with Initial and Follow-up variants

**`feature`** Added **CapabilityStatement** with OAuth security and support for all resource types

**`improve`** Simplified Procedure profile: removed complex slicing on `category.coding` and `code.coding`, replaced with direct required ValueSet bindings

**`documentation`** Split monolithic UML diagram into **two domain-specific diagrams**: [Vital Data Information Model](Vital-Data-Model.html) and [Ventilation Data Information Model](Ventilation-Data-Model.html). The original combined diagram is replaced by a hub page ([Information Model](Information-Model.html)) that links to both detail diagrams plus the Logical Model

**`feature`** Added **multi-language support** (English default, German translation) — language switcher in page header, translated pagecontent under `input/translations/de/pagecontent/`

---

#### v0.1.0 (2025-10-06) — Initial Draft

**`feature`** 33 FHIR StructureDefinitions covering cross-domain, vital data, and ventilation data profiles

**`feature`** 71 validated example instances

**`feature`** IEEE 11073 compliant device hierarchy (MDS, VMD, Channel, DeviceMetric)

**`feature`** 11 ventilation parameters and 13 vital sign parameters

**`feature`** Full clinical workflow: Patient, Devices, Observations, Encounter, DiagnosticReport

**`feature`** Terminology bindings: LOINC, IEEE 11073, SNOMED CT, UCUM

**`documentation`** CC-BY-4.0 license
