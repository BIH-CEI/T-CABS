# T-CABS Patient Example - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Patient Example**

## Example Patient: T-CABS Patient Example

Profiles: [T-CABS Patient](StructureDefinition-t-cabs-patient.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKPatient|5.1.0](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKPatient|5.1.0)

Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Contact Detail | Musterstraße 123 Berlin 10115 DE (home) |
| Links: | * General Practitioner: [Practitioner Anna Schmidt(official)](Practitioner-tcabs-practitioner-example.md)
* Managing Organization: [Organization Charité Campus Mitte](Organization-CABS.md)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tcabs-patient-example",
  "meta" : {
    "profile" : [
      "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-patient",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKPatient|5.1.0"
    ]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR"
          }
        ]
      },
      "system" : "http://tcabs.example.org/patients",
      "value" : "TCABS-PAT-001"
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Mustermann",
      "given" : ["Max"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1980-01-15",
  "deceasedBoolean" : false,
  "address" : [
    {
      "use" : "home",
      "type" : "both",
      "line" : ["Musterstraße 123"],
      "city" : "Berlin",
      "postalCode" : "10115",
      "country" : "DE"
    }
  ],
  "generalPractitioner" : [
    {
      "reference" : "Practitioner/tcabs-practitioner-example"
    }
  ],
  "managingOrganization" : {
    "reference" : "Organization/CABS"
  }
}

```
