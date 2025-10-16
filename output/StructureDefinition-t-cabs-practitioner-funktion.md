# T-CABS Funktion - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Funktion**

## Resource Profile: T-CABS Funktion 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-practitioner-funktion | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_PractitionerRole_Funktion |

 
Profil für eine Funktion einer Person innerhalb der T-CABS Studie 

**Usages:**

* Examples for this Profile: [PractitionerRole/tcabs-practitioner-role-example](PractitionerRole-tcabs-practitioner-role-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-practitioner-funktion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-practitioner-funktion.csv), [Excel](StructureDefinition-t-cabs-practitioner-funktion.xlsx), [Schematron](StructureDefinition-t-cabs-practitioner-funktion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-practitioner-funktion",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-funktion",
  "version" : "0.1.0",
  "name" : "T_CABS_PractitionerRole_Funktion",
  "title" : "T-CABS Funktion",
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
  "description" : "Profil für eine Funktion einer Person innerhalb der T-CABS Studie",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole"
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "mustSupport" : true
      }
    ]
  }
}

```
