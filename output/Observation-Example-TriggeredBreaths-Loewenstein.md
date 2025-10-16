# Beispiel TriggeredBreaths Löwenstein - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel TriggeredBreaths Löwenstein**

## Example Observation: Beispiel TriggeredBreaths Löwenstein

Profile: [T-CABS Observation TriggeredBreaths](StructureDefinition-t-cabs-observation-triggeredbreaths.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015](Procedure-beispiel-beatmung-loewenstein.md)

**status**: Final

**code**: MDC_VENT_RESP_BTSD_P_RATE

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000

**value**: 92 %(Details: UCUM code% = '%')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-LOEW-TRIG-001; type = MDC_VENT_RESP_BTSD_P_RATE; unit = %; operationalStatus = on; color = yellow; category = measurement; measurementPeriod = Once per 1 minute](DeviceMetric-beispiel-devicemetric-loewenstein-triggeredbreaths.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-TriggeredBreaths-Loewenstein",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-triggeredbreaths"
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
        "code" : "152498",
        "display" : "MDC_VENT_RESP_BTSD_P_RATE"
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
    "value" : 92,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-loewenstein-triggeredbreaths"
  }
}

```
