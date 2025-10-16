# Beispiel Druck Min/Max ResMed - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Druck Min/Max ResMed**

## Example Observation: Beispiel Druck Min/Max ResMed

Profile: [T-CABS Observation Druck MIN/MAX](StructureDefinition-t-cabs-observation-druck-minmax.md)

**partOf**: [Procedure MDC_PRESS_AWAY_CTS_POS](Procedure-beispiel-beatmung-resmed.md)

**status**: Final

**code**: MDC_PRESS_AWAY

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-10-07 23:00:00+0200 --> 2024-10-07 23:30:00+0200

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-RESMED-DRUCK-001; type = MDC_PRESS_AWAY; unit = mbar; operationalStatus = on; color = brown; category = measurement; measurementPeriod = Once per 30 seconds](DeviceMetric-beispiel-devicemetric-resmed-druck.md)

> **component****code**:MDC_PRESS_AWAY_MIN**value**: 4 mbar(Details: UCUM codembar = 'mbar')

> **component****code**:MDC_PRESS_AWAY_MAX**value**: 20 mbar(Details: UCUM codembar = 'mbar')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-DruckMinMax-ResMed",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-druck-minmax"
    ]
  },
  "partOf" : [
    {
      "reference" : "Procedure/beispiel-beatmung-resmed"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "151792",
        "display" : "MDC_PRESS_AWAY"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-10-07T23:00:00+02:00",
    "end" : "2024-10-07T23:30:00+02:00"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-resmed-druck"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "151794",
            "display" : "MDC_PRESS_AWAY_MIN"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 4,
        "unit" : "mbar",
        "system" : "http://unitsofmeasure.org",
        "code" : "mbar"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "151793",
            "display" : "MDC_PRESS_AWAY_MAX"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 20,
        "unit" : "mbar",
        "system" : "http://unitsofmeasure.org",
        "code" : "mbar"
      }
    }
  ]
}

```
