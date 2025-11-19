# T-CABS Observation Hand Grip Strength - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Hand Grip Strength**

## Resource Profile: T-CABS Observation Hand Grip Strength 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observationhandgriffstaerke | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_Observation_Handgriffstaerke |

 
Profile for hand grip strength 

**Usages:**

* Examples for this Profile: [Observation/Example-Handgriffstaerke-Doccla](Observation-Example-Handgriffstaerke-Doccla.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observationhandgriffstaerke)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observationhandgriffstaerke.csv), [Excel](StructureDefinition-t-cabs-observationhandgriffstaerke.xlsx), [Schematron](StructureDefinition-t-cabs-observationhandgriffstaerke.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observationhandgriffstaerke",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observationhandgriffstaerke",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_Handgriffstaerke",
  "title" : "T-CABS Observation Hand Grip Strength",
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
  "description" : "Profile for hand grip strength",
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
        "sliceName" : "MDCType"
      },
      {
        "id" : "Observation.code.coding:MDCType.code",
        "path" : "Observation.code.coding.code",
        "patternCode" : "8455547"
      },
      {
        "id" : "Observation.code.coding:SnomedCoding",
        "path" : "Observation.code.coding",
        "sliceName" : "SnomedCoding",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.coding:SnomedCoding.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "patternUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Observation.code.coding:SnomedCoding.code",
        "path" : "Observation.code.coding.code",
        "patternCode" : "251433001"
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "patternString" : "kg"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "patternCode" : "kg"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "85562004"
            }
          ]
        },
        "mustSupport" : true
      }
    ]
  }
}

```
