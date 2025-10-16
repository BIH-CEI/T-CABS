# T-CABS Observation Beatmungsparameter (abstract) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Observation Beatmungsparameter (abstract)**

## Resource Profile: T-CABS Observation Beatmungsparameter (abstract) 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparameter | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Observation_Beatmungsparameter |

 
Abstraktes Profil für Beatmungsparameter 

**Usages:**

* Derived from this Profile: [T-CABS Observation AHI](StructureDefinition-t-cabs-observation-ahi.md), [T-CABS Observation AMV](StructureDefinition-t-cabs-observation-amv.md), [T-CABS Observation AF](StructureDefinition-t-cabs-observation-atemfrequenz-beatmet.md), [T-CABS Observation Atemzeitverhaeltnis](StructureDefinition-t-cabs-observation-atemzeitverhaeltnis.md)...Show 7 more,[T-CABS Observation Druck MIN/MAX](StructureDefinition-t-cabs-observation-druck-minmax.md),[T-CABS Observation IPAP](StructureDefinition-t-cabs-observation-ipap.md),[T-CABS Observation Leckage](StructureDefinition-t-cabs-observation-leckage.md),[T-CABS Observation PEEP](StructureDefinition-t-cabs-observation-peep.md),[T-CABS Observation Target Volume](StructureDefinition-t-cabs-observation-targetvolume.md),[T-CABS Observation TI](StructureDefinition-t-cabs-observation-ti.md)and[T-CABS Observation TriggeredBreaths](StructureDefinition-t-cabs-observation-triggeredbreaths.md)
* Refer to this Profile: [T-CABS DiagnosticReport Visitenbefund](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-observation-beatmungsparameter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-observation-beatmungsparameter.csv), [Excel](StructureDefinition-t-cabs-observation-beatmungsparameter.xlsx), [Schematron](StructureDefinition-t-cabs-observation-beatmungsparameter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-observation-beatmungsparameter",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparameter",
  "version" : "0.1.0",
  "name" : "T_CABS_Observation_Beatmungsparameter",
  "title" : "T-CABS Observation Beatmungsparameter (abstract)",
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
  "description" : "Abstraktes Profil für Beatmungsparameter",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/NumericObservation",
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
        "short" : "Referenz auf den Patienten",
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
        "definition" : "Grenzwerte des jeweiligen Parameters."
      },
      {
        "id" : "Observation.referenceRange.low",
        "path" : "Observation.referenceRange.low",
        "short" : "Untere Grenze des Parameters.",
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
        "short" : "Obere Grenze des Parameters.",
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
