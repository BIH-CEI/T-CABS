# Beispiel Leckage ResMed - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Leckage ResMed**

## Example Observation: Beispiel Leckage ResMed

Profile: [T-CABS Observation Leckage](StructureDefinition-t-cabs-observation-leckage.md)

**partOf**: [Procedure MDC_PRESS_AWAY_CTS_POS](Procedure-beispiel-beatmung-resmed.md)

**status**: Final

**code**: MDC_VENT_VOL_LEAK

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000

**value**: 0.6 L/min(Details: UCUM codeL/min = 'L/min')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-RESMED-LECKAGE-001; type = MDC_VENT_VOL_LEAK; unit = L/min; operationalStatus = on; color = red; category = measurement; measurementPeriod = Once per 5 seconds](DeviceMetric-beispiel-devicemetric-resmed-leckage.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Leckage-ResMed",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-leckage"
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
        "code" : "152432",
        "display" : "MDC_VENT_VOL_LEAK"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T22:00:00Z",
    "end" : "2024-01-16T06:00:00Z"
  },
  "valueQuantity" : {
    "value" : 0.6,
    "unit" : "L/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "L/min"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-resmed-leckage"
  }
}

```
