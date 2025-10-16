# Beispiel PEEP Löwenstein - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel PEEP Löwenstein**

## Example Observation: Beispiel PEEP Löwenstein

Profile: [T-CABS Observation PEEP](StructureDefinition-t-cabs-observation-peep.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015](Procedure-beispiel-beatmung-loewenstein.md)

**status**: Final

**code**: MDC_VENT_PRESS_AWAY_DELTA

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 23:35:00+0000 --> 2024-01-15 23:35:00+0000

**value**: 18 mbar(Details: UCUM codembar = 'mbar')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-LOEW-PEEP-001; type = MDC_VENT_PRESS_AWAY_DELTA; unit = mbar; operationalStatus = on; color = magenta; category = calculation; measurementPeriod = Once per 1 minute](DeviceMetric-beispiel-devicemetric-loewenstein-peep.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-PEEP-Loewenstein",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-peep"
    ]
  },
  "partOf" : [
    {
      "reference" : "Procedure/beispiel-beatmung-loewenstein"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152720",
        "display" : "MDC_VENT_PRESS_AWAY_DELTA"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T23:35:00Z",
    "end" : "2024-01-15T23:35:00Z"
  },
  "valueQuantity" : {
    "value" : 18,
    "unit" : "mbar",
    "system" : "http://unitsofmeasure.org",
    "code" : "mbar"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-loewenstein-peep"
  }
}

```
