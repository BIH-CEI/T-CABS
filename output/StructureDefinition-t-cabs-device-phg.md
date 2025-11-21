# T-CABS Device PHG - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Device PHG**

## Resource Profile: T-CABS Device PHG 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-device-phg | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_Device_PHG |

 
Profile for a tablet used as a gateway device 

**Usages:**

* Refer to this Profile: [T-CABS Observation Vital Parameter](StructureDefinition-t-cabs-observation-vitalparameter.md) and [T-CABS Observation Vital Parameter with Components](StructureDefinition-t-cabs-observation-vitalparametermitkomponenten.md)
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
  "description" : "Profile for a tablet used as a gateway device",
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
        "short" : "Serial number of the device",
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
          "code" : "8528192"
        }
      },
      {
        "id" : "Device.patient",
        "path" : "Device.patient",
        "short" : "Reference to the patient",
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
