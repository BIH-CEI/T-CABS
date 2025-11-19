# T-CABS ValueSet Ventilation Mode - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS ValueSet Ventilation Mode**

## ValueSet: T-CABS ValueSet Ventilation Mode 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/ValueSet/t-cabs-valueset-Beatmungsmodus | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_ValueSet_Beatmungsmodus |

 
This ValueSet contains codes to represent the different ventilation modes 

 **References** 

* [T-CABS Procedure Ventilation](StructureDefinition-t-cabs-procedure-beatmung.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on codesystem ISO 11073-10101 Health informatics - Point-of-care version 2024-12-05

This value set contains 10 concepts

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
  "id" : "t-cabs-valueset-Beatmungsmodus",
  "url" : "http://t-cabs.org/ValueSet/t-cabs-valueset-Beatmungsmodus",
  "version" : "0.1.0",
  "name" : "T_CABS_ValueSet_Beatmungsmodus",
  "title" : "T-CABS ValueSet Ventilation Mode",
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
  "description" : "This ValueSet contains codes to represent the different ventilation modes",
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
            "code" : "475172",
            "display" : "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"
          },
          {
            "code" : "475147",
            "display" : "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
          },
          {
            "code" : "475148",
            "display" : "MDC_VENT_MODE_ISO_AC_vtPC_6ACAP"
          },
          {
            "code" : "475154",
            "display" : "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
          },
          {
            "code" : "475197",
            "display" : "MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP"
          },
          {
            "code" : "475201",
            "display" : "MDC_VENT_MODE_ISO_CMV_VC"
          },
          {
            "code" : "475161",
            "display" : "MDC_VENT_MODE_ISO_CSV_6ACAP"
          },
          {
            "code" : "475140",
            "display" : "MDC_VENT_MODE_ISO_AC_VC_6ACAPL"
          },
          {
            "code" : "475136",
            "display" : "MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL"
          },
          {
            "code" : "475190",
            "display" : "MDC_VENT_MODE_ISO_HIFLOW_3NIV"
          }
        ]
      }
    ]
  }
}

```
