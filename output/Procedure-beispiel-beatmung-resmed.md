# Beispiel Beatmung ResMed - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Beatmung ResMed**

## Example Procedure: Beispiel Beatmung ResMed

Profile: [T-CABS Procedure Beatmung](StructureDefinition-t-cabs-procedure-beatmung.md)

**status**: Completed

**category**: Non-invasive ventilation (regime/therapy)

**code**: MDC_PRESS_AWAY_CTS_POS

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**performed**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000

**usedReference**: [Device: extension = 6500; identifier = UDI; manufacturer = ResMed; serialNumber = STELLAR150-SN-901234; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-resmed.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "beispiel-beatmung-resmed",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-procedure-beatmung"
    ]
  },
  "status" : "completed",
  "category" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "428311008",
        "display" : "Non-invasive ventilation (regime/therapy)"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "151796",
        "display" : "MDC_PRESS_AWAY_CTS_POS"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "performedPeriod" : {
    "start" : "2024-01-15T22:00:00Z",
    "end" : "2024-01-16T06:00:00Z"
  },
  "usedReference" : [
    {
      "reference" : "Device/beispiel-beatmungsgeraet-resmed"
    }
  ]
}

```
