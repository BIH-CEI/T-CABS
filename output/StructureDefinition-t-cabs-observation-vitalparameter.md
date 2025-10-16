# T-CABS Observation Vitalparamter - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Vitalparamter**

## Resource Profile: T-CABS Observation Vitalparamter 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-vitalparameter | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Observation_Vitalparameter |

 
Abstraktes Profil für die gemessenen Vitalparameter von Doccla 

**Usages:**

* Derived from this Profile: [T-CABS Observation Arterieller Blutdruck](StructureDefinition-t-cabs-observation-arteriellerblutdruck.md), [T-CABS Observation SPO2](StructureDefinition-t-cabs-observation-arteriellespo2.md), [T-CABS Observation Atemfrequenz](StructureDefinition-t-cabs-observation-atemfrequenz.md), [T-CABS Observation BMI](StructureDefinition-t-cabs-observation-bmi.md)...Show 5 more,[T-CABS Observation Gehstrecke](StructureDefinition-t-cabs-observation-gehstrecke.md),[T-CABS Observation Herzfrequenz](StructureDefinition-t-cabs-observation-herzfrequenz.md),[T-CABS Observation Koerpergewicht](StructureDefinition-t-cabs-observation-koerpergewicht.md),[T-CABS Observation Koerpertemperatur](StructureDefinition-t-cabs-observation-koerpertemperatur.md)and[T-CABS Observation FEV1](StructureDefinition-t-cabs-observationfev1.md)
* Refer to this Profile: [T-CABS DiagnosticReport Visitenbefund](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)

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
  "title" : "T-CABS Observation Vitalparamter",
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
  "description" : "Abstraktes Profil für die gemessenen Vitalparameter von Doccla",
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
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
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
        "sliceName" : "VSCat"
      },
      {
        "id" : "Observation.category:VSCat.coding",
        "path" : "Observation.category.coding",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Referenz auf den Patienten",
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
        "mustSupport" : true
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
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
