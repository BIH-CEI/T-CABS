### Release Notes

#### Versioning

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

#### v0.2.0 (2026-04-08) — Draft

**`feature`** Added **8 DeviceAlert profiles** backporting FHIR R6 DeviceAlert to R4 using `Basic` as carrier resource with extensions
  - Abstract base profile `T_CABS_DeviceAlert` plus 7 specific alarm profiles: Pressure, Tidal Volume, Minute Volume, Respiratory Rate, Apnea, Disconnection, Rebreathing

**`feature`** Added **11 extensions** mapping all R6 DeviceAlert elements (status, code, presence, occurrence, limit, type, priority, device, derivedFrom, label, signal)

**`feature`** Added **2 CodeSystems**: `T_CABS_CodeSystem_DeviceAlert` and `T_CABS_CodeSystem_VentilationAlarm`

**`feature`** Added **7 ValueSets** for DeviceAlert (status, type, priority, signal activation/presence/manifestation, ventilation alarm codes)

**`feature`** Added **5 ConceptMaps** for manufacturer mappings:
  - BREAS, ResMed, Löwenstein, Doccla → IEEE 11073 (parameter codes)
  - Ventilation Modes: 44 manufacturer-specific mode names (BREAS/Löwenstein/ResMed) → IEEE 11073 mode codes

**`feature`** Added **6 SearchParameters**: Observation by device serial, Procedure by ventilation mode/form, DeviceAlert by type/priority/code

**`feature`** Added **4 example Transaction Bundles**: Ventilation + Vital Data, each with Initial and Follow-up variants

**`feature`** Added **CapabilityStatement** with OAuth security and support for all resource types

**`feature`** Added **Invariant** `tcabs-druck-1` on DruckMinMax profile: MinPress must be less than MaxPress

**`feature`** Added **9 profile test cases** (expected-fail) for Device MDS, Observation AMV, and Observation DruckMinMax

**`improve`** Simplified Procedure profile: removed complex slicing on `category.coding` and `code.coding`, replaced with direct required ValueSet bindings

**`improve`** Changed pressure unit from `mbar` to `cm[H2O]` (correct UCUM) in all pressure profiles

**`improve`** Corrected SNOMED CT display names: removed semantic tags from Beatmungsform ValueSet and VentilationAlarmCode ValueSet

**`improve`** Fixed CPAP example in Procedure: corrected ventilation mode code from 151796 (pressure parameter) to 475161 (CPAP mode)

**`improve`** GitHub Actions CI/CD workflow fixed for automated IG builds

**`documentation`** MII ICU harmonization analysis including detailed comparison of abstract ventilation parameter profile

**`documentation`** Analyzed data dictionary and documented 80 missing parameters

**`documentation`** Added SQL Views page demonstrating IG Publisher SQL-on-FHIR feature

---

#### v0.1.0 (2025-10-06) — Initial Draft

**`feature`** 33 FHIR StructureDefinitions covering cross-domain, vital data, and ventilation data profiles

**`feature`** 71 validated example instances

**`feature`** IEEE 11073 compliant device hierarchy (MDS, VMD, Channel, DeviceMetric)

**`feature`** 11 ventilation parameters and 13 vital sign parameters

**`feature`** Full clinical workflow: Patient, Devices, Observations, Encounter, DiagnosticReport

**`feature`** Terminology bindings: LOINC, IEEE 11073, SNOMED CT, UCUM

**`documentation`** CC-BY-4.0 license
