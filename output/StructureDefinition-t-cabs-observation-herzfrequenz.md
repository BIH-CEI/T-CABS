# T-CABS Observation Heart Rate - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Heart Rate**

## Resource Profile: T-CABS Observation Heart Rate 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-herzfrequenz | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_Observation_Herzfrequenz |

 
Profile for heart rate. Compatibility: For the profile T_CABS_Observation_Herzfrequenz, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Herzfrequenz are also valid against the[ISiKHerzfrequenz](https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz). 

**Usages:**

* Examples for this Profile: [Observation/Example-Herzfrequenz-Doccla](Observation-Example-Herzfrequenz-Doccla.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-herzfrequenz)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-herzfrequenz.csv), [Excel](StructureDefinition-t-cabs-observation-herzfrequenz.xlsx), [Schematron](StructureDefinition-t-cabs-observation-herzfrequenz.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-herzfrequenz",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-herzfrequenz",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_Herzfrequenz",
  "title" : "T-CABS Observation Heart Rate",
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
  "description" : "Profile for heart rate.\nCompatibility:\nFor the profile T_CABS_Observation_Herzfrequenz, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Herzfrequenz are also valid against the [ISiKHerzfrequenz](https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz).",
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
        "sliceName" : "MDCType",
        "patternCoding" : {
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "147842"
        }
      },
      {
        "id" : "Observation.code.coding:LoincCoding",
        "path" : "Observation.code.coding",
        "sliceName" : "LoincCoding",
        "patternCoding" : {
          "system" : "http://loinc.org",
          "code" : "8867-4"
        }
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "patternString" : "/min"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "patternCode" : "/min"
      }
    ]
  }
}

```
