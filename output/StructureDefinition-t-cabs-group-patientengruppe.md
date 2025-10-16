# T-CABS Patientengruppe - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Patientengruppe**

## Resource Profile: T-CABS Patientengruppe 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-group-patientengruppe | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Group_Patientengruppe |

 
Profil um Patienten innerhalb der T-CABS Studie gruppieren zu können 

**Usages:**

* Refer to this Profile: [T-CABS ResearchStudy Studie](StructureDefinition-t-cabs-researchstudy-studie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-group-patientengruppe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-group-patientengruppe.csv), [Excel](StructureDefinition-t-cabs-group-patientengruppe.xlsx), [Schematron](StructureDefinition-t-cabs-group-patientengruppe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-group-patientengruppe",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-group-patientengruppe",
  "version" : "0.1.0",
  "name" : "T_CABS_Group_Patientengruppe",
  "title" : "T-CABS Patientengruppe",
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
  "description" : "Profil um Patienten innerhalb der T-CABS Studie gruppieren zu können",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
  "type" : "Group",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Group",
        "path" : "Group"
      },
      {
        "id" : "Group.type",
        "path" : "Group.type",
        "patternCode" : "person"
      },
      {
        "id" : "Group.actual",
        "path" : "Group.actual",
        "patternBoolean" : true
      },
      {
        "id" : "Group.managingEntity",
        "path" : "Group.managingEntity",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion",
              "http://t-cabs.org/StructureDefinition/t-cabs-organisation"
            ]
          }
        ]
      },
      {
        "id" : "Group.member",
        "path" : "Group.member",
        "mustSupport" : true
      },
      {
        "id" : "Group.member.entity",
        "path" : "Group.member.entity",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
