# T-CABS Procedure Beatmung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Procedure Beatmung**

## Resource Profile: T-CABS Procedure Beatmung 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-procedure-beatmung | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Procedure_Beatmung |

 
Profil für die Beatmungsprozedur 

**Usages:**

* Refer to this Profile: [T-CABS Observation Beatmungsparameter (abstract)](StructureDefinition-t-cabs-observation-beatmungsparameter.md)
* Examples for this Profile: [Procedure/beispiel-beatmung-breas](Procedure-beispiel-beatmung-breas.md), [Procedure/beispiel-beatmung-loewenstein](Procedure-beispiel-beatmung-loewenstein.md) and [Procedure/beispiel-beatmung-resmed](Procedure-beispiel-beatmung-resmed.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-procedure-beatmung)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-procedure-beatmung.csv), [Excel](StructureDefinition-t-cabs-procedure-beatmung.xlsx), [Schematron](StructureDefinition-t-cabs-procedure-beatmung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-procedure-beatmung",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-procedure-beatmung",
  "version" : "0.1.0",
  "name" : "T_CABS_Procedure_Beatmung",
  "title" : "T-CABS Procedure Beatmung",
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
  "description" : "Profil für die Beatmungsprozedur",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.category",
        "path" : "Procedure.category",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.category.coding",
        "path" : "Procedure.category.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Procedure.category.coding:beatmungsform",
        "path" : "Procedure.category.coding",
        "sliceName" : "beatmungsform",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://t-cabs.org/ValueSet/t-cabs-valueset-Beatmungsform"
        }
      },
      {
        "id" : "Procedure.category.coding:beatmungsform.system",
        "path" : "Procedure.category.coding.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.category.coding:beatmungsform.code",
        "path" : "Procedure.category.coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.coding",
        "path" : "Procedure.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Procedure.code.coding:beatmungsmodus",
        "path" : "Procedure.code.coding",
        "sliceName" : "beatmungsmodus",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://t-cabs.org/ValueSet/t-cabs-valueset-Beatmungsmodus"
        }
      },
      {
        "id" : "Procedure.code.coding:beatmungsmodus.system",
        "path" : "Procedure.code.coding.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.coding:beatmungsmodus.code",
        "path" : "Procedure.code.coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.bodySite",
        "path" : "Procedure.bodySite",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.usedReference",
        "path" : "Procedure.usedReference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
