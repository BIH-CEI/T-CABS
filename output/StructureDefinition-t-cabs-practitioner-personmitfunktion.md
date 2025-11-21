# T-CABS Person with Function - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Person with Function**

## Resource Profile: T-CABS Person with Function 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-practitioner-personmitfunktion | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_Practitioner_PersonMitFunktion |

 
Profile for an involved person within the T-CABS study. Compatibility: The T_CABS_Practitioner_PersonMitFunktion profile aims for compatibility with ISiK version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Practitioner_PersonMitFunktion are also valid against the[ISiKPersonImGesundheitsberuf](https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf) 

**Usages:**

* Refer to this Profile: [T-CABS Patient Group](StructureDefinition-t-cabs-group-patientengruppe.md)
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
  "title" : "T-CABS Person with Function",
  "status" : "draft",
  "date" : "2025-11-20T17:13:04+01:00",
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
  "description" : "Profile for an involved person within the T-CABS study.\nCompatibility:\nThe T_CABS_Practitioner_PersonMitFunktion profile aims for compatibility with ISiK version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Practitioner_PersonMitFunktion are also valid against the [ISiKPersonImGesundheitsberuf](https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)",
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
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name:Name",
        "path" : "Practitioner.name",
        "sliceName" : "Name",
        "short" : "Full name",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : ["http://fhir.de/StructureDefinition/humanname-de-basis"]
          }
        ],
        "patternHumanName" : {
          "use" : "official"
        },
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name:Name.use",
        "path" : "Practitioner.name.use",
        "min" : 1,
        "fixedCode" : "official",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name:Name.family",
        "path" : "Practitioner.name.family",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name:Name.given",
        "path" : "Practitioner.name.given",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name:Name.prefix",
        "path" : "Practitioner.name.prefix",
        "mustSupport" : true
      }
    ]
  }
}

```
