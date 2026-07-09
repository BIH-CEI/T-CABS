This page documents the **computable metadata** used in the T-CABS Implementation Guide and provides an **informative FAIR self-assessment**. The assessment maps selected metadata of this IG to the indicators of the [RDA FAIR Data Maturity Model](https://doi.org/10.15497/rda00050), following the HL7 [FHIR-for-FAIR](https://build.fhir.org/ig/HL7/fhir-for-fair/) interpretation.

> **Note:** This page is informative and preliminary. The described metadata is **descriptive** and does not change the clinical or technical conformance requirements of the IG. It documents the *current* state and will evolve as the IG moves toward formal publication.

### Scope

The self-assessment covers the **metadata and conformance artifacts** of the IG (the `ImplementationGuide` resource and the contained `StructureDefinition`, `ValueSet`, `CodeSystem`, `ConceptMap`, `CapabilityStatement`, `SearchParameter` resources) and the **example instances** shipped with the IG. The IG does not itself manage production data; the FAIRness of data exchanged by a deployed T-CABS-conformant server depends on that deployment and is out of scope here. The assessment therefore distinguishes between **IG metadata / conformance artifacts** and **example/test data** in this IG.

### Implemented IG metadata

| Metadata | Value | FHIR position |
|---|---|---|
| Canonical URL | `https://bih-cei.github.io/T-CABS` | `ImplementationGuide.url` |
| Package ID | `t-cabs` | `ImplementationGuide.packageId` |
| Version | `0.3.0` (SemVer) | `ImplementationGuide.version` |
| Status | `draft` | `ImplementationGuide.status` |
| FHIR version | `4.0.1` (R4) | `ImplementationGuide.fhirVersion` |
| License | `CC-BY-4.0` (SPDX code) | `ImplementationGuide.license` |
| Publisher | Berlin Institute of Health at Charité (BIH-CEI) | `ImplementationGuide.publisher` / `.contact` |
| Jurisdiction | `urn:iso:std:iso:3166#DE` (Germany) | `ImplementationGuide.jurisdiction` |
| Dependencies (pinned) | MII KDS Base 2026.0.0, PHD 2.0.0, PoCD 0.3.0, de.basisprofil.r4 1.5.4 | `ImplementationGuide.dependsOn` |
| Capability declaration | T-CABS Server CapabilityStatement | `CapabilityStatement` |
| Terminology bindings | LOINC, SNOMED CT, ISO/IEEE 11073-10101, UCUM, T-CABS local | `ValueSet` / `CodeSystem` / element bindings |

### Versioning and package provenance

- **Versioning algorithm:** Semantic Versioning (`major.minor.patch`).
- **Version history:** maintained in `package-list.json` (e.g. 0.1.0 → 0.2.0 → 0.2.1 → 0.3.0).
- **Dependency pinning:** all four upstream IGs are pinned to fixed versions (not `current`) for reproducible builds.
- **Package source / provenance:** the published package originates from the T-CABS source repository; the IG/artifact provenance is carried by the publisher, copyright, and the version history.

### Relation to FAIR (self-assessment)

The tables map selected RDA FAIR Data Maturity indicators to how this IG addresses them. **-M** = metadata indicator, **-D** = data indicator. For data (**-D**) indicators, the assessment refers to the **example/test instances** shipped with the IG; these demonstrate the relevant FHIR patterns but are not declared as a persistent FAIR dataset. Open items are marked explicitly.

#### Findable

| ID | Indicator | Priority | Addressed in T-CABS through |
|---|---|---|---|
| RDA-F1-01M | Metadata identified by a persistent identifier | Essential | For IG metadata and conformance artifacts: canonical `url` values, package ID `t-cabs`, package version |
| RDA-F1-01D | Data identified by a persistent identifier | Essential | For example/test data: `Resource.id`, `Bundle.identifier`, `identifier` elements and `Bundle.entry.fullUrl` demonstrate identification patterns (not declared as persistent data PIDs) |
| RDA-F1-02M | Metadata identified by a globally unique identifier | Essential | For IG metadata and conformance artifacts: canonical URLs are globally unique by construction |
| RDA-F1-02D | Data identified by a globally unique identifier | Essential | For example/test data: `identifier.system` + `identifier.value` patterns demonstrate globally scoped identification |
| RDA-F2-01M | Rich metadata provided to allow discovery | Essential | IG metadata, profiled `StructureDefinition`s, `meta`, narrative documentation, `SearchParameter`s |
| RDA-F3-01M | Metadata includes the identifier for the data | Essential | `Reference` / canonical links enforced in profiles |
| RDA-F4-01M | Metadata can be harvested and indexed | Essential | Published IG (HTML + `.tgz`); `CapabilityStatement`; **partial** — FHIR package registry entry pending |

#### Accessible

| ID | Indicator | Priority | Addressed in T-CABS through |
|---|---|---|---|
| RDA-A1-02M | Metadata can be accessed manually | Essential | IG website (published IG pages) |
| RDA-A1-02D | Data can be accessed manually | Essential | For example/test data: example resource pages and generated JSON/XML files are available from the IG |
| RDA-A1-03M | Metadata identifier resolves to a metadata record | Essential | Canonical artifact URLs resolve to published artifact pages |
| RDA-A1-03D | Data identifier resolves to a digital object | Essential | For example/test data: example pages and downloadable JSON/XML enable access |
| RDA-A1-04M | Metadata accessed through a standardised protocol | Essential | HTTPS + FHIR REST |
| RDA-A1-04D | Data accessible through a standardised protocol | Essential | For example/test data: examples downloadable as FHIR JSON/XML over HTTPS and via the FHIR package |
| RDA-A1-05D | Data can be accessed automatically | Important | For example/test data: downloadable JSON/XML and the example transaction `Bundle` support automated tooling |
| RDA-A1.1-01M | Metadata accessible through a free/open protocol | Essential | HTTP/FHIR (open, freely implementable) |
| RDA-A1.1-01D | Data accessible through a free/open protocol | Important | For example/test data: examples accessible over HTTPS and via the FHIR package |
| RDA-A1.2-01D | Data protocol supports authentication/authorisation | Useful | The `CapabilityStatement` declares an OAuth2 security expectation (`rest.security`); full SMART-on-FHIR / deployment detail is implementation-dependent |
| RDA-A2-01M | Metadata remains available after data is no longer available | Essential | IG metadata is published independently of any data instance |

#### Interoperable

| ID | Indicator | Priority | Addressed in T-CABS through |
|---|---|---|---|
| RDA-I1-01M | Metadata uses a standardised knowledge representation | Important | FHIR R4 (JSON/XML) |
| RDA-I1-01D | Data uses a standardised knowledge representation | Important | For example/test data: examples are FHIR R4 resources |
| RDA-I1-02M | Metadata is machine-understandable | Important | FHIR structured resources, profiled and coded |
| RDA-I1-02D | Data is machine-understandable | Important | For example/test data: examples use coded elements, references, identifiers and declared profiles |
| RDA-I2-01M | Metadata uses FAIR-compliant vocabularies | Important | Terminology bindings to LOINC, SNOMED CT, ISO/IEEE 11073-10101, UCUM |
| RDA-I2-01D | Data uses FAIR-compliant vocabularies | Useful | For example/test data: examples use the bound value sets / code systems |
| RDA-I3-01M | Metadata includes references to other metadata | Important | Canonical references between profiles, value sets, code systems, ConceptMaps |
| RDA-I3-01D | Data includes references to other data | Useful | For example/test data: examples use FHIR `Reference` elements between resources |
| RDA-I3-02D | Data includes qualified references to other data | Useful | For example/test data: typed FHIR elements demonstrate qualified references |
| RDA-I3-03M | Metadata includes qualified references to other metadata | Important | Typed/qualified `Reference`s and bindings within the IG |

#### Reusable

| ID | Indicator | Priority | Addressed in T-CABS through |
|---|---|---|---|
| RDA-R1-01M | Plurality of accurate, relevant attributes for reuse | Essential | Rich IG and resource metadata, profiles, documentation |
| RDA-R1.1-01M | Metadata includes license information | Essential | `license = CC-BY-4.0` |
| RDA-R1.1-02M | Metadata refers to a standard reuse license | Important | CC-BY-4.0 (Creative Commons standard license) |
| RDA-R1.1-03M | Metadata refers to a machine-understandable license | Important | `ImplementationGuide.license` carries the **SPDX** code `CC-BY-4.0` |
| RDA-R1.2-01M | Metadata includes provenance (community standard) | Important | IG/artifact provenance via the version history (`package-list.json`), publisher, copyright and `date` |
| RDA-R1.3-01M | Metadata complies with a community standard | Essential | FHIR R4; PoCD/PHD/MII conventions; IEEE 11073 nomenclature |
| RDA-R1.3-01D | Data complies with a community standard | Essential | For example/test data: examples declare T-CABS profiles and demonstrate conformance expectations |
| RDA-R1.3-02M | Metadata expressed in a machine-understandable community standard | Essential | `StructureDefinition` / `ImplementationGuide` / `CapabilityStatement` |
| RDA-R1.3-02D | Data expressed in a machine-understandable community standard | Important | For example/test data: FHIR R4 examples, declared profiles, terminology resources and the `CapabilityStatement` |

### Practical usage

- **Cite / reference** the IG via its canonical `https://bih-cei.github.io/T-CABS` and a specific `version`.
- **Reuse** is governed by **CC-BY-4.0** (attribution required).
- **Install** the FHIR package via its package ID `t-cabs` once published to a registry; until then, obtain the `.tgz` from the IG output.
