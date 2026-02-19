# Example Provider Jochum - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Provider Jochum**

## Example Organization: Example Provider Jochum

Profiles: [T-CABS Organization](StructureDefinition-t-cabs-organisation.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation|5.1.0](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation|5.1.0)

**identifier**: `http://tcabs.example.org/providers`/PROV-JOCHUM-001

**name**: Jochum GmbH



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "beispiel-provider-jochum",
  "meta" : {
    "profile" : [
      "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-organisation",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation|5.1.0"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-JOCHUM-001"
    }
  ],
  "name" : "Jochum GmbH"
}

```
