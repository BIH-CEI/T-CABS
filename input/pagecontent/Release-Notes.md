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

#### v0.2.0 (2026-03-25) — Draft

**`feature`** Added **8 DeviceAlert profiles** backporting FHIR R6 DeviceAlert to R4 using `Basic` as carrier resource with extensions
  - Abstract base profile `T_CABS_DeviceAlert` plus 7 specific alarm profiles: Pressure, Tidal Volume, Minute Volume, Respiratory Rate, Apnea, Disconnection, Rebreathing

**`feature`** Added **11 extensions** mapping all R6 DeviceAlert elements (status, code, presence, occurrence, limit, type, priority, device, derivedFrom, label, signal)

**`feature`** Added **2 CodeSystems**: `T_CABS_CodeSystem_DeviceAlert` (resource type, status, type, priority, signal codes) and `T_CABS_CodeSystem_VentilationAlarm` (rebreathing only — all other alarm codes use IEEE 11073 / SNOMED CT)

**`feature`** Added **7 ValueSets** for DeviceAlert (status, type, priority, signal activation/presence/manifestation, ventilation alarm codes)

**`feature`** Added **4 ConceptMaps** for manufacturer-to-IEEE 11073 mappings: BREAS, ResMed, Löwenstein, Doccla

**`feature`** Added **4 example Transaction Bundles**: Ventilation + Vital Data, each with Initial and Follow-up variants

**`feature`** Added **CapabilityStatement** (`T-CABS-ServerCapabilityStatement`) with OAuth security and support for all resource types

**`feature`** Added **Invariant** `tcabs-druck-1` on DruckMinMax profile: MinPress must be less than MaxPress

**`feature`** Added **9 profile test cases** (expected-fail) for Device MDS, Observation AMV, and Observation DruckMinMax

**`improve`** Updated CapabilityStatement with Basic resource type and all DeviceAlert supportedProfiles

**`improve`** Changed pressure unit from `mbar` to `cm[H2O]` (correct UCUM) in all pressure profiles (IPAP, PEEP, DruckMinMax), DeviceMetrics, and examples

**`improve`** GitHub Actions CI/CD workflow fixed for automated IG builds

**`documentation`** Analyzed data dictionary (12 sheets, ~900 rows) and documented 64 missing parameters

**`documentation`** Added SQL Views page demonstrating IG Publisher SQL-on-FHIR feature

**`documentation`** Added Ventilation Alarm Code ValueSet to Terminologies page

---

#### v0.1.0 (2025-10-06) — Initial Draft

**`feature`** 33 FHIR StructureDefinitions covering cross-domain, vital data, and ventilation data profiles

**`feature`** 71 validated example instances

**`feature`** IEEE 11073 compliant device hierarchy (MDS, VMD, Channel, DeviceMetric)

**`feature`** 11 ventilation parameters and 13 vital sign parameters

**`feature`** Full clinical workflow: Patient, Devices, Observations, Encounter, DiagnosticReport

**`feature`** Terminology bindings: LOINC, IEEE 11073, SNOMED CT, UCUM

**`documentation`** CC-BY-4.0 license
