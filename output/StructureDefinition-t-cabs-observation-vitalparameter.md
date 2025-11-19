# T-CABS Observation Vital Parameter - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Vital Parameter**

## Resource Profile: T-CABS Observation Vital Parameter 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-vitalparameter | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_Observation_Vitalparameter |

 
Abstract profile for measured vital parameters 

**Usages:**

* Derived from this Profile: [T-CABS Observation SPO2](StructureDefinition-t-cabs-observation-arteriellespo2.md), [T-CABS Observation Respiratory Rate](StructureDefinition-t-cabs-observation-atemfrequenz.md), [T-CABS Observation BMI](StructureDefinition-t-cabs-observation-bmi.md), [T-CABS Observation Walking Distance](StructureDefinition-t-cabs-observation-gehstrecke.md)...Show 8 more,[T-CABS Observation Heart Rate](StructureDefinition-t-cabs-observation-herzfrequenz.md),[T-CABS Observation Body Weight](StructureDefinition-t-cabs-observation-koerpergewicht.md),[T-CABS Observation Body Temperature](StructureDefinition-t-cabs-observation-koerpertemperatur.md),[T-CABS Observation FEV1](StructureDefinition-t-cabs-observationfev1.md),[T-CABS Observation FEF25-75](StructureDefinition-t-cabs-observationfev1fef25-75.md),[T-CABS Observation FEV1/FEV6](StructureDefinition-t-cabs-observationfev1fev6.md),[T-CABS Observation FEV6](StructureDefinition-t-cabs-observationfev6.md)and[T-CABS Observation Hand Grip Strength](StructureDefinition-t-cabs-observationhandgriffstaerke.md)
* Refer to this Profile: [T-CABS DiagnosticReport Visit Finding](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-vitalparameter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-vitalparameter.csv), [Excel](StructureDefinition-t-cabs-observation-vitalparameter.xlsx), [Schematron](StructureDefinition-t-cabs-observation-vitalparameter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-vitalparameter",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-vitalparameter",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_Vitalparameter",
  "title" : "T-CABS Observation Vital Parameter",
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
  "description" : "Abstract profile for measured vital parameters",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension.value[x]",
        "path" : "Observation.extension.value[x]",
        "short" : "Reference to the PHG device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-device-phg"]
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "min" : 2
      },
      {
        "id" : "Observation.category:PHD-Observation",
        "path" : "Observation.category",
        "sliceName" : "PHD-Observation"
      },
      {
        "id" : "Observation.category:PHD-Observation.coding",
        "path" : "Observation.category.coding",
        "patternCoding" : {
          "system" : "http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories",
          "code" : "phd-observation"
        }
      },
      {
        "id" : "Observation.category:VSCat",
        "path" : "Observation.category",
        "sliceName" : "VSCat",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:VSCat.coding",
        "path" : "Observation.category.coding",
        "max" : "1",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:MDCType",
        "path" : "Observation.code.coding",
        "sliceName" : "MDCType",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:LoincCoding",
        "path" : "Observation.code.coding",
        "sliceName" : "LoincCoding",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Reference to the patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "Reference to the person who performed the measurement",
        "mustSupport" : true
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "Reference to the PHD measurement device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-device-phd"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
