# T-CABS Observation Arterial Blood Pressure - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Arterial Blood Pressure**

## Resource Profile: T-CABS Observation Arterial Blood Pressure 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellerblutdruck | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_Observation_ArteriellerBlutdruck |

 
Profile for arterial blood pressure. Compatibility: For the profile T_CABS_Observation_ArteriellerBlutdruck, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArteriellerBlutdruck are also valid against the[ISiKBlutdruckArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell) 

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
  "title" : "T-CABS Observation Arterial Blood Pressure",
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
  "description" : "Profile for arterial blood pressure.\nCompatibility:\nFor the profile T_CABS_Observation_ArteriellerBlutdruck, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArteriellerBlutdruck are also valid against the [ISiKBlutdruckArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell)",
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
  "baseDefinition" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-vitalparametermitkomponenten",
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
          "code" : "85354-9"
        }
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
        "id" : "Observation.component:compound",
        "path" : "Observation.component",
        "sliceName" : "compound"
      },
      {
        "id" : "Observation.component:compound.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:compound.value[x]",
        "path" : "Observation.component.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:compound.dataAbsentReason",
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
