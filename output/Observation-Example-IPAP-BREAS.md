# Beispiel IPAP BREAS - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel IPAP BREAS**

## Example Observation: Beispiel IPAP BREAS

Profile: [T-CABS Observation IPAP](StructureDefinition-t-cabs-observation-ipap.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_AC_PC_6ACAP](Procedure-beispiel-beatmung-breas.md)

**status**: Final

**code**: MDC_SABTE_PRESS_IPAP_SET

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-10-07 22:00:00+0200 --> 2024-10-07 22:15:00+0200

**value**: 15 mbar(Details: UCUM codembar = 'mbar')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-BREAS-IPAP-001; type = MDC_SABTE_PRESS_IPAP_SET; unit = mbar; operationalStatus = on; color = lime; category = setting; measurementPeriod = Once per 5 minutes](DeviceMetric-beispiel-devicemetric-breas-ipap.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-IPAP-BREAS",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-ipap"
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
        "code" : "8410976",
        "display" : "MDC_SABTE_PRESS_IPAP_SET"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-10-07T22:00:00+02:00",
    "end" : "2024-10-07T22:15:00+02:00"
  },
  "valueQuantity" : {
    "value" : 15,
    "unit" : "mbar",
    "system" : "http://unitsofmeasure.org",
    "code" : "mbar"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-breas-ipap"
  }
}

```
