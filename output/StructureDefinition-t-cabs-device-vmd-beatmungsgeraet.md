# T-CABS Device VMD Beatmungsgeraet - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Device VMD Beatmungsgeraet**

## Resource Profile: T-CABS Device VMD Beatmungsgeraet 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Device_VMD_Beatmungsgeraet |

 
Profil welches ein virtuelles Subsystem oder Modul darstellt 

**Usages:**

* Refer to this Profile: [T-CABS Device Channel Beatmungsgeraet](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)
* Examples for this Profile: [Device/beispiel-vmd-breas-ahi](Device-beispiel-vmd-breas-ahi.md), [Device/beispiel-vmd-breas-amv](Device-beispiel-vmd-breas-amv.md), [Device/beispiel-vmd-breas-ipap](Device-beispiel-vmd-breas-ipap.md), [Device/beispiel-vmd-breas-targetvolume](Device-beispiel-vmd-breas-targetvolume.md)...Show 7 more,[Device/beispiel-vmd-loewenstein-peep](Device-beispiel-vmd-loewenstein-peep.md),[Device/beispiel-vmd-loewenstein-ti](Device-beispiel-vmd-loewenstein-ti.md),[Device/beispiel-vmd-loewenstein-triggeredbreaths](Device-beispiel-vmd-loewenstein-triggeredbreaths.md),[Device/beispiel-vmd-resmed-atemfrequenz](Device-beispiel-vmd-resmed-atemfrequenz.md),[Device/beispiel-vmd-resmed-atemzeit](Device-beispiel-vmd-resmed-atemzeit.md),[Device/beispiel-vmd-resmed-druck](Device-beispiel-vmd-resmed-druck.md)and[Device/beispiel-vmd-resmed-leckage](Device-beispiel-vmd-resmed-leckage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.csv), [Excel](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.xlsx), [Schematron](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-device-vmd-beatmungsgeraet",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet",
  "version" : "0.1.0",
  "name" : "T_CABS_Device_VMD_Beatmungsgeraet",
  "title" : "T-CABS Device VMD Beatmungsgeraet",
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
  "description" : "Profil welches ein virtuelles Subsystem oder Modul darstellt",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/VmdDevice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.type.coding",
        "path" : "Device.type.coding",
        "patternCoding" : {
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "70002",
          "display" : "MDC_DEV_SYS_PT_VENT_VMD"
        }
      },
      {
        "id" : "Device.parent",
        "path" : "Device.parent",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
            ]
          }
        ]
      }
    ]
  }
}

```
