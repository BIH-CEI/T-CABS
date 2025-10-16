# T-CABS ResearchStudy Studie - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS ResearchStudy Studie**

## Resource Profile: T-CABS ResearchStudy Studie 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-researchstudy-studie | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_ResearchStudy_Studie |

 
Profil um die Metadaten der T-CABS Studie abzubilden 

**Usages:**

* Refer to this Profile: [T-CABS ResearchSubject Studie](StructureDefinition-t-cabs-researchsubject-studienteilnehmer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-researchstudy-studie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-researchstudy-studie.csv), [Excel](StructureDefinition-t-cabs-researchstudy-studie.xlsx), [Schematron](StructureDefinition-t-cabs-researchstudy-studie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-researchstudy-studie",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-researchstudy-studie",
  "version" : "0.1.0",
  "name" : "T_CABS_ResearchStudy_Studie",
  "title" : "T-CABS ResearchStudy Studie",
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
  "description" : "Profil um die Metadaten der T-CABS Studie abzubilden",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "BRIDG5.1",
      "uri" : "https://bridgmodel.nci.nih.gov",
      "name" : "BRIDG 5.1 Mapping"
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
      "identity" : "clinicaltrials-gov",
      "uri" : "http://clinicaltrials.gov",
      "name" : "ClinicalTrials.gov Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ResearchStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ResearchStudy",
        "path" : "ResearchStudy"
      },
      {
        "id" : "ResearchStudy.title",
        "path" : "ResearchStudy.title",
        "patternString" : "T-CABS - Telemedizinisches Centrum für Außerklinische Beatmung und Sauerstofftherapie"
      },
      {
        "id" : "ResearchStudy.enrollment",
        "path" : "ResearchStudy.enrollment",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-group-patientengruppe"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ResearchStudy.principalInvestigator",
        "path" : "ResearchStudy.principalInvestigator",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion"
            ]
          }
        ]
      }
    ]
  }
}

```
