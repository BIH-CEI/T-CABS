# T-CABS ValueSet Ventilation Site - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS ValueSet Ventilation Site**

## ValueSet: T-CABS ValueSet Ventilation Site 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/ValueSet/t-cabs-valueset-beatmungsstelle | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_ValueSet_Beatmungsstelle |

 
This ValueSet contains codes to represent the body sites where ventilation is applied 

 **References** 

* [T-CABS Procedure Ventilation](StructureDefinition-t-cabs-procedure-beatmung.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb. 2025

This value set contains 3 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "t-cabs-valueset-beatmungsstelle",
  "url" : "http://t-cabs.org/ValueSet/t-cabs-valueset-beatmungsstelle",
  "version" : "0.1.0",
  "name" : "T_CABS_ValueSet_Beatmungsstelle",
  "title" : "T-CABS ValueSet Ventilation Site",
  "status" : "draft",
  "date" : "2025-11-19T11:55:29+01:00",
  "publisher" : "BIH-CEI",
  "contact" : [
    {
      "name" : "BIH-CEI",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.bihealth.org/"
        }
      ]
    }
  ],
  "description" : "This ValueSet contains codes to represent the body sites where ventilation is applied",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "DE",
          "display" : "Germany"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "302549007",
            "display" : "Entire face (body structure)"
          },
          {
            "code" : "45206002",
            "display" : "Nasal structure (body structure)"
          },
          {
            "code" : "44567001",
            "display" : "Tracheal structure (body structure)"
          }
        ]
      }
    ]
  }
}

```
