# T-CABS Observation Pressure MIN/MAX - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Pressure MIN/MAX**

## Resource Profile: T-CABS Observation Pressure MIN/MAX 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-druck-minmax | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_Observation_DruckMinMax |

 
Profile for minimal and maximal ventilation pressure 

**Usages:**

* Examples for this Profile: [Observation/Example-DruckMinMax-ResMed](Observation-Example-DruckMinMax-ResMed.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-druck-minmax)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-druck-minmax.csv), [Excel](StructureDefinition-t-cabs-observation-druck-minmax.xlsx), [Schematron](StructureDefinition-t-cabs-observation-druck-minmax.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-druck-minmax",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-druck-minmax",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_DruckMinMax",
  "title" : "T-CABS Observation Pressure MIN/MAX",
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
  "description" : "Profile for minimal and maximal ventilation pressure",
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
  "baseDefinition" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparametermitkomponenten",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "patternCoding" : {
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "151792"
        }
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:MinPress",
        "path" : "Observation.component",
        "sliceName" : "MinPress",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MinPress.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "151794",
              "display" : "MDC_PRESS_AWAY_MIN"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:MinPress.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:MinPress.value[x]:valueQuantity.unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "mbar"
      },
      {
        "id" : "Observation.component:MinPress.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mbar"
      },
      {
        "id" : "Observation.component:MaxPress",
        "path" : "Observation.component",
        "sliceName" : "MaxPress",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:MaxPress.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "151793",
              "display" : "MDC_PRESS_AWAY_MAX"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:MaxPress.value[x]:valueQuantity",
        "path" : "Observation.component.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.component:MaxPress.value[x]:valueQuantity.unit",
        "path" : "Observation.component.value[x].unit",
        "patternString" : "mbar"
      },
      {
        "id" : "Observation.component:MaxPress.value[x]:valueQuantity.code",
        "path" : "Observation.component.value[x].code",
        "patternCode" : "mbar"
      }
    ]
  }
}

```
