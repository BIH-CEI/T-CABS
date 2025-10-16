# T-CABS ValueSet Beatmungsform - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS ValueSet Beatmungsform**

## ValueSet: T-CABS ValueSet Beatmungsform 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/ValueSet/t-cabs-valueset-Beatmungsform | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_ValueSet_Beatmungsform |

 
Dieses ValueSet enthält Codes um die verschiedenen Beatmungsformen abzubilden 

 **References** 

* [T-CABS Procedure Beatmung](StructureDefinition-t-cabs-procedure-beatmung.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb. 2025

This value set contains 2 concepts

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
  "id" : "t-cabs-valueset-Beatmungsform",
  "url" : "http://t-cabs.org/ValueSet/t-cabs-valueset-Beatmungsform",
  "version" : "0.1.0",
  "name" : "T_CABS_ValueSet_Beatmungsform",
  "title" : "T-CABS ValueSet Beatmungsform",
  "status" : "draft",
  "date" : "2025-10-16T18:59:10+02:00",
  "publisher" : "BIH-CEI",
  "contact" : [
    {
      "name" : "BIH-CEI",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://example.org/example-publisher"
        }
      ]
    }
  ],
  "description" : "Dieses ValueSet enthält Codes um die verschiedenen Beatmungsformen abzubilden",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "428311008",
            "display" : "Non-invasive ventilation (regime/therapy)"
          },
          {
            "code" : "1258985005",
            "display" : "Invasive mechanical ventilation (regime/therapy)"
          }
        ]
      }
    ]
  }
}

```
