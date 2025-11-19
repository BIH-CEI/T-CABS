# Example AHI Measurement BREAS - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example AHI Measurement BREAS**

## Example Observation: Example AHI Measurement BREAS

Profile: [T-CABS Observation AHI](StructureDefinition-t-cabs-observation-ahi.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_AC_PC_6ACAP](Procedure-beispiel-beatmung-breas.md)

**status**: Final

**code**: MDC_SABTE_AHI_TOTAL

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000

**value**: 5.2 {score}(Details: UCUM code{score} = '{score}')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-BREAS-AHI-001; type = MDC_SABTE_AHI_TOTAL; unit = {score}; operationalStatus = on; color = green; category = calculation; measurementPeriod = Once per 1 hour](DeviceMetric-beispiel-devicemetric-breas-ahi.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-AHI-BREAS",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-ahi"
    ]
  },
  "partOf" : [
    {
      "reference" : "Procedure/beispiel-beatmung-breas"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "8410792",
        "display" : "MDC_SABTE_AHI_TOTAL"
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
    "value" : 5.2,
    "unit" : "{score}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-breas-ahi"
  }
}

```
