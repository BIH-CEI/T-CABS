# T-CABS DeviceMetric NumericMetric - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS DeviceMetric NumericMetric**

## Resource Profile: T-CABS DeviceMetric NumericMetric 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_DeviceMetric_NumericMetric |

 
Profile representing a numeric measurement, calculation, or setting 

**Usages:**

* Refer to this Profile: [T-CABS Observation Ventilation Parameter (abstract)](StructureDefinition-t-cabs-observation-beatmungsparameter.md) and [T-CABS Observation Ventilation Parameter with Components (abstract)](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.md)
* Examples for this Profile: [DeviceMetric/beispiel-devicemetric-breas-ahi](DeviceMetric-beispiel-devicemetric-breas-ahi.md), [DeviceMetric/beispiel-devicemetric-breas-amv](DeviceMetric-beispiel-devicemetric-breas-amv.md), [DeviceMetric/beispiel-devicemetric-breas-ipap](DeviceMetric-beispiel-devicemetric-breas-ipap.md), [DeviceMetric/beispiel-devicemetric-breas-targetvolume](DeviceMetric-beispiel-devicemetric-breas-targetvolume.md)...Show 7 more,[DeviceMetric/beispiel-devicemetric-loewenstein-peep](DeviceMetric-beispiel-devicemetric-loewenstein-peep.md),[DeviceMetric/beispiel-devicemetric-loewenstein-ti](DeviceMetric-beispiel-devicemetric-loewenstein-ti.md),[DeviceMetric/beispiel-devicemetric-loewenstein-triggeredbreaths](DeviceMetric-beispiel-devicemetric-loewenstein-triggeredbreaths.md),[DeviceMetric/beispiel-devicemetric-resmed-atemfrequenz](DeviceMetric-beispiel-devicemetric-resmed-atemfrequenz.md),[DeviceMetric/beispiel-devicemetric-resmed-atemzeit](DeviceMetric-beispiel-devicemetric-resmed-atemzeit.md),[DeviceMetric/beispiel-devicemetric-resmed-druck](DeviceMetric-beispiel-devicemetric-resmed-druck.md)and[DeviceMetric/beispiel-devicemetric-resmed-leckage](DeviceMetric-beispiel-devicemetric-resmed-leckage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-devicemetric-numericmetric)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-devicemetric-numericmetric.csv), [Excel](StructureDefinition-t-cabs-devicemetric-numericmetric.xlsx), [Schematron](StructureDefinition-t-cabs-devicemetric-numericmetric.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-devicemetric-numericmetric",
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric",
  "version" : "0.1.0",
  "name" : "T_CABS_DeviceMetric_NumericMetric",
  "title" : "T-CABS DeviceMetric NumericMetric",
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
  "description" : "Profile representing a numeric measurement, calculation, or setting",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceMetric",
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/NumericDeviceMetric",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DeviceMetric",
        "path" : "DeviceMetric"
      },
      {
        "id" : "DeviceMetric.type",
        "path" : "DeviceMetric.type",
        "definition" : "Coding to identify the parameter"
      },
      {
        "id" : "DeviceMetric.source",
        "path" : "DeviceMetric.source",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
            ]
          }
        ]
      },
      {
        "id" : "DeviceMetric.parent",
        "path" : "DeviceMetric.parent",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
            ]
          }
        ]
      },
      {
        "id" : "DeviceMetric.category",
        "path" : "DeviceMetric.category",
        "short" : "Measurement or setting"
      }
    ]
  }
}

```
