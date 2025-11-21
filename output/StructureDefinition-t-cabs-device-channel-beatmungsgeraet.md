# T-CABS Device Channel Ventilator - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Device Channel Ventilator**

## Resource Profile: T-CABS Device Channel Ventilator 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet | *Version*:0.1.0 |
| Draft as of 2025-11-20 | *Computable Name*:T_CABS_Device_Channel_Beatmungsgeraet |

 
Profile representing a channel for grouping DeviceMetrics 

**Usages:**

* Refer to this Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)
* Examples for this Profile: [Device/beispiel-channel-breas-ahi](Device-beispiel-channel-breas-ahi.md), [Device/beispiel-channel-breas-amv](Device-beispiel-channel-breas-amv.md), [Device/beispiel-channel-breas-ipap](Device-beispiel-channel-breas-ipap.md), [Device/beispiel-channel-breas-targetvolume](Device-beispiel-channel-breas-targetvolume.md)...Show 7 more,[Device/beispiel-channel-loewenstein-peep](Device-beispiel-channel-loewenstein-peep.md),[Device/beispiel-channel-loewenstein-ti](Device-beispiel-channel-loewenstein-ti.md),[Device/beispiel-channel-loewenstein-triggeredbreaths](Device-beispiel-channel-loewenstein-triggeredbreaths.md),[Device/beispiel-channel-resmed-atemfrequenz](Device-beispiel-channel-resmed-atemfrequenz.md),[Device/beispiel-channel-resmed-atemzeit](Device-beispiel-channel-resmed-atemzeit.md),[Device/beispiel-channel-resmed-druck](Device-beispiel-channel-resmed-druck.md)and[Device/beispiel-channel-resmed-leckage](Device-beispiel-channel-resmed-leckage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-device-channel-beatmungsgeraet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.csv), [Excel](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.xlsx), [Schematron](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-device-channel-beatmungsgeraet",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet",
  "version" : "0.1.0",
  "name" : "T_CABS_Device_Channel_Beatmungsgeraet",
  "title" : "T-CABS Device Channel Ventilator",
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
  "description" : "Profile representing a channel for grouping DeviceMetrics",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/ChannelDevice",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.parent",
        "path" : "Device.parent",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"
            ]
          }
        ]
      }
    ]
  }
}

```
