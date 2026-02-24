### Release Notes

#### v0.2.0 (2026-02-24) — Draft

- Added **CapabilityStatement** (`T-CABS-ServerCapabilityStatement`) defining server requirements for telemedical ventilation monitoring, including supported profiles for all 11 resource types and OAuth security
- Improved **FAIR compliance** (RDA indicators F4-01M, A1-04D) through machine-readable API capability declaration
- Added **Release Notes** page to the IG
- Bumped version to 0.2.0
- Analyzed data dictionary (12 sheets, ~900 rows) and documented 64 missing parameters for future implementation
- Fixed GitHub Actions CI/CD workflow for automated IG builds

#### v0.1.0 (2025-10-06) — Initial Draft

- 33 FHIR StructureDefinitions covering cross-domain, vital data, and ventilation data profiles
- 71 validated example instances
- IEEE 11073 compliant device hierarchy (MDS, VMD, Channel, DeviceMetric)
- 11 ventilation parameters and 13 vital sign parameters
- Full clinical workflow: Patient, Devices, Observations, Encounter, DiagnosticReport
- Terminology bindings: LOINC, IEEE 11073, SNOMED CT, UCUM
- CC-BY-4.0 license
