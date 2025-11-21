# T-CABS Observation Ventilation Parameter with Components (abstract) - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Ventilation Parameter with Components (abstract)**

## Resource Profile: T-CABS Observation Ventilation Parameter with Components (abstract) 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparametermitkomponenten | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_Observation_BeatmungsparameterMitKomponenten |

 
Abstract profile for ventilation parameters with multiple values 

**Usages:**

* Derived from this Profile: [T-CABS Observation Pressure MIN/MAX](StructureDefinition-t-cabs-observation-druck-minmax.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-beatmungsparametermitkomponenten)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.csv), [Excel](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.xlsx), [Schematron](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-beatmungsparametermitkomponenten",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparametermitkomponenten",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_BeatmungsparameterMitKomponenten",
  "title" : "T-CABS Observation Ventilation Parameter with Components (abstract)",
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
  "description" : "Abstract profile for ventilation parameters with multiple values",
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
      "identity" : "dim",
      "uri" : "urn:iso:std:iso:11073:10201",
      "name" : "IEEE 11073-10201 DIM"
    },
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
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/CompoundNumericObservation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-procedure-beatmung"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
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
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
            ]
          }
        ]
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "Reference ranges for the parameter.",
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.low",
        "path" : "Observation.referenceRange.low",
        "short" : "Lower limit of the parameter.",
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.low.value",
        "path" : "Observation.referenceRange.low.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.low.unit",
        "path" : "Observation.referenceRange.low.unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.low.system",
        "path" : "Observation.referenceRange.low.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.referenceRange.low.code",
        "path" : "Observation.referenceRange.low.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.high",
        "path" : "Observation.referenceRange.high",
        "short" : "Upper limit of the parameter.",
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.high.value",
        "path" : "Observation.referenceRange.high.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.high.unit",
        "path" : "Observation.referenceRange.high.unit",
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.high.system",
        "path" : "Observation.referenceRange.high.system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Observation.referenceRange.high.code",
        "path" : "Observation.referenceRange.high.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange.type",
        "path" : "Observation.referenceRange.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
              "code" : "therapeutic"
            }
          ]
        }
      }
    ]
  }
}

```
