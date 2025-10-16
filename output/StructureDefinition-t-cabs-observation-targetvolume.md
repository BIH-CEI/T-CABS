# T-CABS Observation Target Volume - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Target Volume**

## Resource Profile: T-CABS Observation Target Volume 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-targetvolume | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Observation_TargetVolume |

 
Profil für das Zielvolumen 

**Usages:**

* Examples for this Profile: [Observation/Example-TargetVolume-BREAS](Observation-Example-TargetVolume-BREAS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-targetvolume)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-targetvolume.csv), [Excel](StructureDefinition-t-cabs-observation-targetvolume.xlsx), [Schematron](StructureDefinition-t-cabs-observation-targetvolume.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-targetvolume",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-targetvolume",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_TargetVolume",
  "title" : "T-CABS Observation Target Volume",
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
  "description" : "Profil für das Zielvolumen",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "dim",
      "uri" : "urn:iso:std:iso:11073:10201",
      "name" : "IEEE 11073-10201 DIM"
    },
    {
      "identity" : "sdc",
      "uri" : "urn:iso:std:iso:11073:10207",
      "name" : "IEEE 11073-10207 SDC"
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
  "baseDefinition" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparameter",
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
          "code" : "153212",
          "display" : "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
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
        "id" : "Observation.value[x]:valueQuantity",
        "path" : "Observation.value[x]",
        "sliceName" : "valueQuantity",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Observation.value[x]:valueQuantity.unit",
        "path" : "Observation.value[x].unit",
        "patternString" : "mL"
      },
      {
        "id" : "Observation.value[x]:valueQuantity.code",
        "path" : "Observation.value[x].code",
        "patternCode" : "mL"
      }
    ]
  }
}

```
