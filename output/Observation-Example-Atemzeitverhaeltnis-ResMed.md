# Example Respiratory Time Ratio ResMed - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Respiratory Time Ratio ResMed**

## Example Observation: Example Respiratory Time Ratio ResMed

Profile: [T-CABS Observation Respiratory Time Ratio](StructureDefinition-t-cabs-observation-atemzeitverhaeltnis.md)

**partOf**: [Procedure MDC_PRESS_AWAY_CTS_POS](Procedure-beispiel-beatmung-resmed.md)

**status**: Final

**code**: MDC_TIME_PD_INSP_NORMALIZED_HF

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-10-07 22:30:00+0200 --> 2024-10-07 22:45:00+0200

**value**: 33 %(Details: UCUM code% = '%')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-RESMED-ATEMZEIT-001; type = MDC_TIME_PD_INSP_NORMALIZED_HF; unit = %; operationalStatus = on; color = white; category = calculation; measurementPeriod = Once per 15 seconds](DeviceMetric-beispiel-devicemetric-resmed-atemzeit.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Atemzeitverhaeltnis-ResMed",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-atemzeitverhaeltnis"
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
        "code" : "153500",
        "display" : "MDC_TIME_PD_INSP_NORMALIZED_HF"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-10-07T22:30:00+02:00",
    "end" : "2024-10-07T22:45:00+02:00"
  },
  "valueQuantity" : {
    "value" : 33,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-resmed-atemzeit"
  }
}

```
