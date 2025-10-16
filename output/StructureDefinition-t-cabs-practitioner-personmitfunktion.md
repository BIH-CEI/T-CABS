# T-CABS Person mit Funktion - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Person mit Funktion**

## Resource Profile: T-CABS Person mit Funktion 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Practitioner_PersonMitFunktion |

 
Profil für eine beteildigte Person innerhalb der T-CABS Studie 

**Usages:**

* Refer to this Profile: [T-CABS Patientengruppe](StructureDefinition-t-cabs-group-patientengruppe.md) and [T-CABS ResearchStudy Studie](StructureDefinition-t-cabs-researchstudy-studie.md)
* Examples for this Profile: [Practitioner/tcabs-practitioner-example](Practitioner-tcabs-practitioner-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-practitioner-personmitfunktion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-practitioner-personmitfunktion.csv), [Excel](StructureDefinition-t-cabs-practitioner-personmitfunktion.xlsx), [Schematron](StructureDefinition-t-cabs-practitioner-personmitfunktion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-practitioner-personmitfunktion",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion",
  "version" : "0.1.0",
  "name" : "T_CABS_Practitioner_PersonMitFunktion",
  "title" : "T-CABS Person mit Funktion",
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
  "description" : "Profil für eine beteildigte Person innerhalb der T-CABS Studie",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner"
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier.system",
        "path" : "Practitioner.identifier.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier.value",
        "path" : "Practitioner.identifier.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "min" : 1
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      }
    ]
  }
}

```
