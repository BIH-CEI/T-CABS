# T-CABS Device PHG - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Device PHG**

## Resource Profile: T-CABS Device PHG 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-device-phg | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Device_PHG |

 
Profil für ein Tablet welches u.a. als Gatewaydevice verwendet wird 

**Usages:**

* Examples for this Profile: [Device/beispiel-phg-doccla](Device-beispiel-phg-doccla.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-device-phg)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-device-phg.csv), [Excel](StructureDefinition-t-cabs-device-phg.xlsx), [Schematron](StructureDefinition-t-cabs-device-phg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-device-phg",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-device-phg",
  "version" : "0.1.0",
  "name" : "T_CABS_Device_PHG",
  "title" : "T-CABS Device PHG",
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
  "description" : "Profil für ein Tablet welches u.a. als Gatewaydevice verwendet wird",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/phd/StructureDefinition/PhgDevice",
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
        "short" : "Seriennummer des Gerätes",
        "mustSupport" : true
      },
      {
        "id" : "Device.specialization",
        "path" : "Device.specialization",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Device.specialization.systemType.coding:MDCType",
        "path" : "Device.specialization.systemType.coding",
        "sliceName" : "MDCType",
        "patternCoding" : {
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "8528192",
          "display" : "MDC_AI_APPLIANCE_TABLETPC"
        }
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
