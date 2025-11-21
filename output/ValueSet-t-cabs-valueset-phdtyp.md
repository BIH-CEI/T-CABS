# T-CABS ValueSet PHD Type - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS ValueSet PHD Type**

## ValueSet: T-CABS ValueSet PHD Type 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/ValueSet/t-cabs-valueset-phdtyp | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_ValueSet_PHDTyp |

 
This ValueSet contains codes to represent the different PHD measurement devices 

 **References** 

* [T-CABS Device PHD](StructureDefinition-t-cabs-device-phd.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on codesystem ISO 11073-10101 Health informatics - Point-of-care version 2024-12-05

This value set contains 7 concepts

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
  "id" : "t-cabs-valueset-phdtyp",
  "url" : "http://t-cabs.org/ValueSet/t-cabs-valueset-phdtyp",
  "version" : "0.1.0",
  "name" : "T_CABS_ValueSet_PHDTyp",
  "title" : "T-CABS ValueSet PHD Type",
  "status" : "draft",
  "date" : "2025-11-20T17:13:04+01:00",
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
  "description" : "This ValueSet contains codes to represent the different PHD measurement devices",
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
        "system" : "urn:iso:std:iso:11073:10101",
        "concept" : [
          {
            "code" : "528388",
            "display" : "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
          },
          {
            "code" : "528399",
            "display" : "MDC_DEV_SPEC_PROFILE_SCALE"
          },
          {
            "code" : "69876",
            "display" : "MDC_DEV_METER_STRENGTH_MUSCL"
          },
          {
            "code" : "528391",
            "display" : "MDC_DEV_SPEC_PROFILE_BP"
          },
          {
            "code" : "69680",
            "display" : "MDC_DEV_ANALY_AWAY_MULTI_PARAM"
          },
          {
            "code" : "528484",
            "display" : "MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER"
          },
          {
            "code" : "528405",
            "display" : "MDC_DEV_SPEC_PROFILE_BCA"
          }
        ]
      }
    ]
  }
}

```
