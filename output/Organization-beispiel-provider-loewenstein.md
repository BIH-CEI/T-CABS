# Example Provider Löwenstein - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Provider Löwenstein**

## Example Organization: Example Provider Löwenstein

Profiles: [T-CABS Organization](StructureDefinition-t-cabs-organisation.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation)

**identifier**: `http://tcabs.example.org/providers`/PROV-LOEW-001

**name**: Löwenstein Medical



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "beispiel-provider-loewenstein",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-organisation",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-LOEW-001"
    }
  ],
  "name" : "Löwenstein Medical"
}

```
