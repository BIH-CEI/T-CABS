# T-CABS Device PHD - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Device PHD**

## Resource Profile: T-CABS Device PHD 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-device-phd | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Device_PHD |

 
Profil für ein Messgerät am Patienten 

**Usages:**

* Refer to this Profile: [T-CABS Observation Vitalparamter](StructureDefinition-t-cabs-observation-vitalparameter.md)
* Examples for this Profile: [Device/beispiel-phd-doccla](Device-beispiel-phd-doccla.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-device-phd)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-device-phd.csv), [Excel](StructureDefinition-t-cabs-device-phd.xlsx), [Schematron](StructureDefinition-t-cabs-device-phd.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-device-phd",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-device-phd",
  "version" : "0.1.0",
  "name" : "T_CABS_Device_PHD",
  "title" : "T-CABS Device PHD",
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
  "description" : "Profil für ein Messgerät am Patienten",
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
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.identifier:systemIdIdentifier",
        "path" : "Device.identifier",
        "sliceName" : "systemIdIdentifier"
      },
      {
        "id" : "Device.identifier:systemIdIdentifier.type.coding.system",
        "path" : "Device.identifier.type.coding.system",
        "mustSupport" : true
      },
      {
        "id" : "Device.identifier:systemIdIdentifier.type.coding.code",
        "path" : "Device.identifier.type.coding.code",
        "mustSupport" : true
      },
      {
        "id" : "Device.identifier:systemIdIdentifier.value",
        "path" : "Device.identifier.value",
        "mustSupport" : true
      },
      {
        "id" : "Device.serialNumber",
        "path" : "Device.serialNumber",
        "short" : "Seriennummer des Geraetes",
        "mustSupport" : true
      },
      {
        "id" : "Device.specialization.systemType.coding:MDCType",
        "path" : "Device.specialization.systemType.coding",
        "sliceName" : "MDCType",
        "short" : "Art des Messgerätes",
        "definition" : "528388 MDC_DEV_SPEC_PROFILE_PULS_OXIM - Pulsoximeter\n528399 MDC_DEV_SPEC_PROFILE_SCALE - Waage\n528426 MDC_DEV_SPEC_PROFILE_HF_STRENGTH - Handstärkemesser\n528391 MDC_DEV_SPEC_PROFILE_BP - Sphygmomanometer\n69680 MDC_DEV_ANALY_AWAY_MULTI_PARAM - Spirometer\n528484 MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER - Schrittzähler\n528405\tMDC_DEV_SPEC_PROFILE_BCA - Peak Flow Meter\n"
      },
      {
        "id" : "Device.patient",
        "path" : "Device.patient",
        "short" : "Referenz auf den Patienten",
        "min" : 1,
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
