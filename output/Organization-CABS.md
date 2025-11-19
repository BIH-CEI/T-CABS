# Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS) - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS)**

## Example Organization: Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS)

Profiles: [T-CABS Organization](StructureDefinition-t-cabs-organisation.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation)

**identifier**: `http://tcabs.example.org/cabs`/CABS-001

**active**: true

**type**: Healthcare Provider

**name**: Charité Campus Mitte

**telecom**: [+49 30 450 550 137](tel:+4930450550137), [cabs@charite.de](mailto:cabs@charite.de)

**address**: Charitéplatz 1 Sauerbruchweg 3, Ebene 3 Berlin 10117 DE (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "CABS",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-organisation",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/cabs",
      "value" : "CABS-001"
    }
  ],
  "active" : true,
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }
      ]
    }
  ],
  "name" : "Charité Campus Mitte",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+49 30 450 550 137",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "cabs@charite.de",
      "use" : "work"
    }
  ],
  "address" : [
    {
      "use" : "work",
      "type" : "both",
      "line" : ["Charitéplatz 1", "Sauerbruchweg 3, Ebene 3"],
      "city" : "Berlin",
      "postalCode" : "10117",
      "country" : "DE"
    }
  ]
}

```
