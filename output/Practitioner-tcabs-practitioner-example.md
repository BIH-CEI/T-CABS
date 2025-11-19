# T-CABS Practitioner Example - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Practitioner Example**

## Example Practitioner: T-CABS Practitioner Example

Profiles: [T-CABS Person with Function](StructureDefinition-t-cabs-practitioner-personmitfunktion.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)

**identifier**: `http://tcabs.example.org/practitioners`/TCABS-DOC-001

**name**: Anna Schmidt(Official)

**telecom**: [anna.schmidt@tcabs-clinic.de](mailto:anna.schmidt@tcabs-clinic.de)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "tcabs-practitioner-example",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/practitioners",
      "value" : "TCABS-DOC-001"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "text" : "Anna Schmidt",
      "family" : "Schmidt",
      "given" : ["Anna"]
    }
  ],
  "telecom" : [
    {
      "system" : "email",
      "value" : "anna.schmidt@tcabs-clinic.de"
    }
  ]
}

```
