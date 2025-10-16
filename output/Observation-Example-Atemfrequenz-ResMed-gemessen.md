# Beispiel Atemfrequenz Messung ResMed - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Atemfrequenz Messung ResMed**

## Example Observation: Beispiel Atemfrequenz Messung ResMed

Profile: [T-CABS Observation AF](StructureDefinition-t-cabs-observation-atemfrequenz-beatmet.md)

**partOf**: [Procedure MDC_PRESS_AWAY_CTS_POS](Procedure-beispiel-beatmung-resmed.md)

**status**: Final

**code**: MDC_VENT_RESP_RATE

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 23:20:00+0000 --> 2024-01-15 23:20:00+0000

**value**: 14 /min(Details: UCUM code/min = '/min')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-RESMED-ATEMFREQ-001; type = MDC_VENT_RESP_RATE; unit = /min; operationalStatus = on; color = cyan; category = measurement; measurementPeriod = Once per 1 minute](DeviceMetric-beispiel-devicemetric-resmed-atemfrequenz.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Atemfrequenz-ResMed-gemessen",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet"
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
        "code" : "151586",
        "display" : "MDC_VENT_RESP_RATE"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T23:20:00Z",
    "end" : "2024-01-15T23:20:00Z"
  },
  "valueQuantity" : {
    "value" : 14,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-resmed-atemfrequenz"
  }
}

```
