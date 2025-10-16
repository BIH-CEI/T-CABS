# T-CABS Encounter Kontakt - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Encounter Kontakt**

## Resource Profile: T-CABS Encounter Kontakt 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-encounter-kontakt | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Encounter_Kontakt |

 
Profil für einen Kontakt/ eine Visite innerhalb der T-CABS Studie 

**Usages:**

* Refer to this Profile: [T-CABS DiagnosticReport Visitenbefund](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)
* Examples for this Profile: [Encounter/Example-Encounter-Telemedizinische-Visite](Encounter-Example-Encounter-Telemedizinische-Visite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-encounter-kontakt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-encounter-kontakt.csv), [Excel](StructureDefinition-t-cabs-encounter-kontakt.xlsx), [Schematron](StructureDefinition-t-cabs-encounter-kontakt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-encounter-kontakt",
  "extension" : [
    {
      "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/spdx-license",
            "code" : "CC-BY-4.0",
            "display" : "Creative Commons Attribution 4.0 International"
          }
        ]
      }
    }
  ],
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-encounter-kontakt",
  "version" : "0.1.0",
  "name" : "T_CABS_Encounter_Kontakt",
  "title" : "T-CABS Encounter Kontakt",
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
  "description" : "Profil für einen Kontakt/ eine Visite innerhalb der T-CABS Studie",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
          }
        ]
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "mustSupport" : true
      }
    ]
  }
}

```
