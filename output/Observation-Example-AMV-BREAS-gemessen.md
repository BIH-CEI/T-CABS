# Example AMV Measurement BREAS - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example AMV Measurement BREAS**

## Example Observation: Example AMV Measurement BREAS

Profile: [T-CABS Observation AMV](StructureDefinition-t-cabs-observation-amv.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_AC_PC_6ACAP](Procedure-beispiel-beatmung-breas.md)

**status**: Final

**code**: MDC_VENT_VOL_MINUTE

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 23:30:00+0000

**value**: 8.5 L/min(Details: UCUM codeL/min = 'L/min')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-BREAS-AMV-001; type = MDC_VENT_VOL_MINUTE; unit = L/min; operationalStatus = on; color = blue; category = measurement; measurementPeriod = Once per 10 seconds](DeviceMetric-beispiel-devicemetric-breas-amv.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-AMV-BREAS-gemessen",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-amv"
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
        "code" : "151996",
        "display" : "MDC_VENT_VOL_MINUTE"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectiveDateTime" : "2024-01-15T23:30:00Z",
  "valueQuantity" : {
    "value" : 8.5,
    "unit" : "L/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "L/min"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-breas-amv"
  }
}

```
