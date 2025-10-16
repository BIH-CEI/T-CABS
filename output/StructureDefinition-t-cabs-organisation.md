# T-CABS Organisation - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Organisation**

## Resource Profile: T-CABS Organisation 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-organisation | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Organisation |

 
Profil für eine Organisation die mit T-CABS Studie in Verbindung steht 

**Usages:**

* Refer to this Profile: [T-CABS Patientengruppe](StructureDefinition-t-cabs-group-patientengruppe.md)
* Examples for this Profile: [Charité Campus Mitte](Organization-CABS.md), [Jochum GmbH](Organization-beispiel-provider-jochum.md), [Löwenstein Medical](Organization-beispiel-provider-loewenstein.md) and [Vivisol Deutschland GmbH](Organization-beispiel-provider-vivisol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-organisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-organisation.csv), [Excel](StructureDefinition-t-cabs-organisation.xlsx), [Schematron](StructureDefinition-t-cabs-organisation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-organisation",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-organisation",
  "version" : "0.1.0",
  "name" : "T_CABS_Organisation",
  "title" : "T-CABS Organisation",
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
  "description" : "Profil für eine Organisation die mit T-CABS Studie in Verbindung steht",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Organization.identifier.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Organization.identifier.value",
        "path" : "Organization.identifier.value",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
