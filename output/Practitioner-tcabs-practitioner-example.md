# T-CABS Practitioner Example - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Practitioner Example**

## Example Practitioner: T-CABS Practitioner Example

Profile: [T-CABS Person mit Funktion](StructureDefinition-t-cabs-practitioner-personmitfunktion.md)

**identifier**: `http://tcabs.example.org/practitioners`/TCABS-DOC-001

**name**: Anna Schmidt 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "tcabs-practitioner-example",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion"
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
      "family" : "Schmidt",
      "given" : ["Anna"]
    }
  ]
}

```
