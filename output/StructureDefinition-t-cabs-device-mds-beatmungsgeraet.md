# T-CABS Device MDS Home Ventilator - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Device MDS Home Ventilator**

## Resource Profile: T-CABS Device MDS Home Ventilator 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_Device_MDS_Beatmungsgeraet |

 
Profile for a home ventilator device 

**Usages:**

* Refer to this Profile: [T-CABS Device VMD Ventilator](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.md), [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md) and [T-CABS Procedure Ventilation](StructureDefinition-t-cabs-procedure-beatmung.md)
* Examples for this Profile: [Device/beispiel-beatmungsgeraet-breas](Device-beispiel-beatmungsgeraet-breas.md), [Device/beispiel-beatmungsgeraet-loewenstein](Device-beispiel-beatmungsgeraet-loewenstein.md) and [Device/beispiel-beatmungsgeraet-resmed](Device-beispiel-beatmungsgeraet-resmed.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-device-mds-beatmungsgeraet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.csv), [Excel](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.xlsx), [Schematron](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-device-mds-beatmungsgeraet",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet",
  "version" : "0.1.0",
  "name" : "T_CABS_Device_MDS_Beatmungsgeraet",
  "title" : "T-CABS Device MDS Home Ventilator",
  "status" : "draft",
  "date" : "2025-11-19T11:55:29+01:00",
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
  "description" : "Profile for a home ventilator device",
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
      "identity" : "dim",
      "uri" : "urn:iso:std:iso:11073:10201",
      "name" : "IEEE 11073-10201 DIM"
    },
    {
      "identity" : "sdc",
      "uri" : "urn:iso:std:iso:11073:10207",
      "name" : "IEEE 11073-10207 SDC"
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
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/MdsDevice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.extension",
        "path" : "Device.extension",
        "min" : 1
      },
      {
        "id" : "Device.extension:operatingHours",
        "path" : "Device.extension",
        "sliceName" : "operatingHours",
        "min" : 1
      },
      {
        "id" : "Device.identifier",
        "path" : "Device.identifier",
        "definition" : "Alternativer Identifier zur Seriennummer"
      },
      {
        "id" : "Device.identifier.type",
        "path" : "Device.identifier.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "UDI"
            }
          ]
        }
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "short" : "Name of the device manufacturer",
        "definition" : "Löwenstein Medical;\nBREAS Medical; \nResMed;\n",
        "min" : 1
      },
      {
        "id" : "Device.serialNumber",
        "path" : "Device.serialNumber",
        "short" : "Serial number of the device",
        "min" : 1
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "min" : 1
      },
      {
        "id" : "Device.deviceName.name",
        "path" : "Device.deviceName.name",
        "short" : "Model name of the device",
        "definition" : "Luisa;\nPrisma VENT30;\nPrisma VENT40;\nPrisma VENT50/50-C;\nVivo3;\nVivo45;\nVivo45LS;\nVivo50;\nVivo55;\nVivo65;\nLumis150;\nStellar100;\nStellar130;\nStellar150;\nAstral100;\nAstral150",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName.type",
        "path" : "Device.deviceName.type",
        "patternCode" : "model-name"
      },
      {
        "id" : "Device.type.coding",
        "path" : "Device.type.coding",
        "patternCoding" : {
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "70001"
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
        ]
      },
      {
        "id" : "Device.owner",
        "path" : "Device.owner",
        "short" : "Reference to the provider of the device",
        "comment" : "Zum Beispiel: \nJochum;\nzuther + hautmann;\nproVita arndt;\nLöwenstein;\nVivisol;\nSapio Life;\n",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
