### Release Notes

#### v0.2.0 (2026-03-20) — Draft

**DeviceAlert (FHIR R6 Backport)**
- Added **8 DeviceAlert profiles** backporting FHIR R6 DeviceAlert to R4 using `Basic` as carrier resource with extensions
  - Abstract base profile `T_CABS_DeviceAlert` plus 7 specific alarm profiles: Pressure, Tidal Volume, Minute Volume, Respiratory Rate, Apnea, Disconnection, Rebreathing
- Added **11 extensions** mapping all R6 DeviceAlert elements (status, code, presence, occurrence, limit, type, priority, device, derivedFrom, label, signal)
- Added **2 CodeSystems**: `T_CABS_CodeSystem_DeviceAlert` (resource type, status, type, priority, signal codes) and `T_CABS_CodeSystem_VentilationAlarm` (rebreathing only — all other alarm codes use IEEE 11073 / SNOMED CT)
- Added **7 ValueSets** for DeviceAlert (status, type, priority, signal activation/presence/manifestation, ventilation alarm codes)
- Alarm codes use **IEEE 11073 MDC codes** (alarm limits + ventilator-specific events) and **SNOMED CT** codes; only rebreathing uses a T-CABS custom code
- Added **7 example instances** with references to existing Device and Patient examples
- Updated **CapabilityStatement** with Basic resource type and all DeviceAlert supportedProfiles

**ConceptMaps**
- Added **4 ConceptMaps** for manufacturer-to-IEEE 11073 mappings: BREAS, ResMed, Löwenstein, Doccla

**Transaction Bundles**
- Added **4 example Transaction Bundles**: Ventilation + Vital Data, each with Initial and Follow-up variants

**Infrastructure & Documentation**
- Added **CapabilityStatement** (`T-CABS-ServerCapabilityStatement`) with OAuth security and support for all resource types
- Fixed **GitHub Actions** CI/CD workflow for automated IG builds
- Analyzed data dictionary (12 sheets, ~900 rows) and documented 64 missing parameters
- Bumped version to 0.2.0

#### v0.1.0 (2025-10-06) — Initial Draft

- 33 FHIR StructureDefinitions covering cross-domain, vital data, and ventilation data profiles
- 71 validated example instances
- IEEE 11073 compliant device hierarchy (MDS, VMD, Channel, DeviceMetric)
- 11 ventilation parameters and 13 vital sign parameters
- Full clinical workflow: Patient, Devices, Observations, Encounter, DiagnosticReport
- Terminology bindings: LOINC, IEEE 11073, SNOMED CT, UCUM
- CC-BY-4.0 license
