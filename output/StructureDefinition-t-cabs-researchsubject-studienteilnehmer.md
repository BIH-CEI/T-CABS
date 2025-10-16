# T-CABS ResearchSubject Studie - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS ResearchSubject Studie**

## Resource Profile: T-CABS ResearchSubject Studie 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-researchsubject-studienteilnehmer | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_ResearchSubject_Studienteilnehmer |

 
Profil um Patienten innerhalb der Studie referenzieren können 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-researchsubject-studienteilnehmer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-researchsubject-studienteilnehmer.csv), [Excel](StructureDefinition-t-cabs-researchsubject-studienteilnehmer.xlsx), [Schematron](StructureDefinition-t-cabs-researchsubject-studienteilnehmer.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-researchsubject-studienteilnehmer",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-researchsubject-studienteilnehmer",
  "version" : "0.1.0",
  "name" : "T_CABS_ResearchSubject_Studienteilnehmer",
  "title" : "T-CABS ResearchSubject Studie",
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
  "description" : "Profil um Patienten innerhalb der Studie referenzieren können",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ResearchSubject",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ResearchSubject",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ResearchSubject",
        "path" : "ResearchSubject"
      },
      {
        "id" : "ResearchSubject.identifier",
        "path" : "ResearchSubject.identifier",
        "short" : "StudienId des/der Patienten/in"
      },
      {
        "id" : "ResearchSubject.period",
        "path" : "ResearchSubject.period",
        "definition" : "Ein und Austritt der Studie"
      },
      {
        "id" : "ResearchSubject.study",
        "path" : "ResearchSubject.study",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-researchstudy-studie"
            ]
          }
        ]
      },
      {
        "id" : "ResearchSubject.individual",
        "path" : "ResearchSubject.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
          }
        ]
      }
    ]
  }
}

```
