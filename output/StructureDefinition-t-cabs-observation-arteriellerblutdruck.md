# T-CABS Observation Arterieller Blutdruck - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Arterieller Blutdruck**

## Resource Profile: T-CABS Observation Arterieller Blutdruck 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellerblutdruck | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Observation_ArteriellerBlutdruck |

 
Profil für den arteriellen Blutdruck. 

**Usages:**

* Examples for this Profile: [Observation/Example-ArteriellerBlutdruck-Doccla](Observation-Example-ArteriellerBlutdruck-Doccla.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-arteriellerblutdruck)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-arteriellerblutdruck.csv), [Excel](StructureDefinition-t-cabs-observation-arteriellerblutdruck.xlsx), [Schematron](StructureDefinition-t-cabs-observation-arteriellerblutdruck.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-arteriellerblutdruck",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellerblutdruck",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_ArteriellerBlutdruck",
  "title" : "T-CABS Observation Arterieller Blutdruck",
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
  "description" : "Profil für den arteriellen Blutdruck.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-vitalparameter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code.coding:MDCType",
        "path" : "Observation.code.coding",
        "sliceName" : "MDCType",
        "patternCoding" : {
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "150016"
        }
      },
      {
        "id" : "Observation.code.coding:LoincCoding",
        "path" : "Observation.code.coding",
        "sliceName" : "LoincCoding",
        "patternCoding" : {
          "system" : "http://loinc.org",
          "code" : "85354-9",
          "display" : "Blood pressure panel with all children optional"
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "min" : 2,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]",
        "path" : "Observation.component.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]:valueQuantity.value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]:valueQuantity.unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "mm[Hg]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "patternUri" : "http://unitsofmeasure.org",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mm[Hg]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:supplementalTypesComponent",
        "path" : "Observation.component",
        "sliceName" : "supplementalTypesComponent"
      },
      {
        "id" : "Observation.component:supplementalTypesComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:supplementalTypesComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:supplementalTypesComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent",
        "path" : "Observation.component",
        "sliceName" : "relativeTimeComponent"
      },
      {
        "id" : "Observation.component:relativeTimeComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.value[x]:valueQuantity.value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.value[x]:valueQuantity.unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:relativeTimeComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent",
        "path" : "Observation.component",
        "sliceName" : "hiresRelativeTimeComponent"
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.value[x]:valueQuantity.value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.value[x]:valueQuantity.unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:hiresRelativeTimeComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent",
        "path" : "Observation.component",
        "sliceName" : "accuracyComponent"
      },
      {
        "id" : "Observation.component:accuracyComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.value[x]:valueQuantity.value",
        "path" : "Observation.component.value[x].value",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.value[x]:valueQuantity.unit",
        "path" : "Observation.component.value[x].unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.value[x]:valueQuantity.system",
        "path" : "Observation.component.value[x].system",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:accuracyComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alertOpStateComponent",
        "path" : "Observation.component",
        "sliceName" : "alertOpStateComponent"
      },
      {
        "id" : "Observation.component:alertOpStateComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alertOpStateComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alertOpStateComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:currentLimitsComponent",
        "path" : "Observation.component",
        "sliceName" : "currentLimitsComponent"
      },
      {
        "id" : "Observation.component:currentLimitsComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:currentLimitsComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:currentLimitsComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alertOpTextStringComponent",
        "path" : "Observation.component",
        "sliceName" : "alertOpTextStringComponent"
      },
      {
        "id" : "Observation.component:alertOpTextStringComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alertOpTextStringComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:alertOpTextStringComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:measurementConfidence95Component",
        "path" : "Observation.component",
        "sliceName" : "measurementConfidence95Component"
      },
      {
        "id" : "Observation.component:measurementConfidence95Component.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:measurementConfidence95Component.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:measurementConfidence95Component.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:thresholdNotificationTextStringComponent",
        "path" : "Observation.component",
        "sliceName" : "thresholdNotificationTextStringComponent"
      },
      {
        "id" : "Observation.component:thresholdNotificationTextStringComponent.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:thresholdNotificationTextStringComponent.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:thresholdNotificationTextStringComponent.dataAbsentReason",
        "path" : "Observation.component.dataAbsentReason",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:SystolicBP",
        "path" : "Observation.component",
        "sliceName" : "SystolicBP",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:SystolicBP.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8480-6"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:SystolicBP.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:SystolicBP.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "patternQuantity" : {
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      },
      {
        "id" : "Observation.component:DiastolicBP",
        "path" : "Observation.component",
        "sliceName" : "DiastolicBP",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.component:DiastolicBP.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8462-4"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:DiastolicBP.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:DiastolicBP.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "patternQuantity" : {
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      },
      {
        "id" : "Observation.component:meanBP",
        "path" : "Observation.component",
        "sliceName" : "meanBP",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:meanBP.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8478-0"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:meanBP.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:meanBP.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "patternQuantity" : {
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      }
    ]
  }
}

```
