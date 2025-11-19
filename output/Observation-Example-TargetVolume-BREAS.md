# Example Target Volume BREAS - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Target Volume BREAS**

## Example Observation: Example Target Volume BREAS

Profile: [T-CABS Observation Target Volume](StructureDefinition-t-cabs-observation-targetvolume.md)

**partOf**: [Procedure MDC_VENT_MODE_ISO_AC_PC_6ACAP](Procedure-beispiel-beatmung-breas.md)

**status**: Final

**code**: MDC_VENT_VOL_TIDAL_TARGET_AUTO

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-10-07 21:00:00+0200 --> 2024-10-07 21:30:00+0200

**value**: 450 mL(Details: UCUM codemL = 'mL')

**device**: [DeviceMetric: identifier = http://tcabs.example.org/device-metric#DM-BREAS-TGTVOL-001; type = MDC_VENT_VOL_TIDAL_TARGET_AUTO; unit = mL; operationalStatus = on; color = magenta; category = setting; measurementPeriod = Once per 10 minutes](DeviceMetric-beispiel-devicemetric-breas-targetvolume.md)

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Type** |
| * | 300 mL(Details: UCUM codemL = 'mL') | 800 mL(Details: UCUM codemL = 'mL') | Therapeutic Desired Level |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-TargetVolume-BREAS",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-targetvolume"
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
        "code" : "153212",
        "display" : "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-10-07T21:00:00+02:00",
    "end" : "2024-10-07T21:30:00+02:00"
  },
  "valueQuantity" : {
    "value" : 450,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "device" : {
    "reference" : "DeviceMetric/beispiel-devicemetric-breas-targetvolume"
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 300,
        "unit" : "mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      },
      "high" : {
        "value" : 800,
        "unit" : "mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "therapeutic"
          }
        ]
      }
    }
  ]
}

```
