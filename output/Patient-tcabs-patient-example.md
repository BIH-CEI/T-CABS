# T-CABS Patient Example - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Patient Example**

## Example Patient: T-CABS Patient Example

Profile: [T-CABS Patient](StructureDefinition-t-cabs-patient.md)

Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "tcabs-patient-example",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
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
  "birthDate" : "1980-01-15"
}

```
