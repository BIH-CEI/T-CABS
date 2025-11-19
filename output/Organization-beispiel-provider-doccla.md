# Example Provider Doccla - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Provider Doccla**

## Example Organization: Example Provider Doccla

Profiles: [T-CABS Organization](StructureDefinition-t-cabs-organisation.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation)

**identifier**: `http://tcabs.example.org/providers`/PROV-DOCCLA-001

**name**: Doccla Deutschland GmbH



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "beispiel-provider-doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-organisation",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-DOCCLA-001"
    }
  ],
  "name" : "Doccla Deutschland GmbH"
}

```
