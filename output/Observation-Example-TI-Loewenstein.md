# Beispiel TI Löwenstein - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel TI Löwenstein**

## Example Observation: Beispiel TI Löwenstein

Profile: [T-CABS Observation TI](StructureDefinition-t-cabs-observation-ti.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015](Procedure-beispiel-beatmung-loewenstein.md)

**status**: Final

**code**: MDC_VENT_TIME_PD_INSP

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-10-07 20:30:00+0200 --> 2024-10-07 20:45:00+0200

**value**: 1.2 s(Details: UCUM codes = 's')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-LOEW-TI-001; type = MDC_VENT_TIME_PD_INSP; unit = s; operationalStatus = on; color = orange; category = measurement; measurementPeriod = Once per 1 second](DeviceMetric-beispiel-devicemetric-loewenstein-ti.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-TI-Loewenstein",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-ti"
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
        "code" : "152416",
        "display" : "MDC_VENT_TIME_PD_INSP"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-10-07T20:30:00+02:00",
    "end" : "2024-10-07T20:45:00+02:00"
  },
  "valueQuantity" : {
    "value" : 1.2,
    "unit" : "s",
    "system" : "http://unitsofmeasure.org",
    "code" : "s"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-loewenstein-ti"
  }
}

```
