# T-CABS DiagnosticReport Visitenbefund - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS DiagnosticReport Visitenbefund**

## Resource Profile: T-CABS DiagnosticReport Visitenbefund 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-diagnosticreport-visitenbefund | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_DiagnosticReport_Visitenbefund |

 
Profil für einen Beurteilung der wöchentlichen, telemedizinischen Visite innerhalb der T-CABS Studie 

**Usages:**

* Examples for this Profile: [DiagnosticReport/Example-DiagnosticReport-Woechentliche-Visite](DiagnosticReport-Example-DiagnosticReport-Woechentliche-Visite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-diagnosticreport-visitenbefund)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.csv), [Excel](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.xlsx), [Schematron](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-diagnosticreport-visitenbefund",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-diagnosticreport-visitenbefund",
  "version" : "0.1.0",
  "name" : "T_CABS_DiagnosticReport_Visitenbefund",
  "title" : "T-CABS DiagnosticReport Visitenbefund",
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
  "description" : "Profil für einen Beurteilung der wöchentlichen, telemedizinischen Visite innerhalb der T-CABS Studie",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DiagnosticReport",
        "path" : "DiagnosticReport"
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "34131-3",
              "display" : "Outpatient Progress note"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.encounter",
        "path" : "DiagnosticReport.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-encounter-kontakt"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-observation-beatmungsparameter",
              "http://t-cabs.org/StructureDefinition/t-cabs-observation-vitalparameter"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "mustSupport" : true
      }
    ]
  }
}

```
