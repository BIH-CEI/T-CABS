# Beispiel Beatmung BREAS - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Beatmung BREAS**

## Example Procedure: Beispiel Beatmung BREAS

Profile: [T-CABS Procedure Beatmung](StructureDefinition-t-cabs-procedure-beatmung.md)

**status**: Completed

**category**: Invasive mechanical ventilation (regime/therapy)

**code**: MDC_VENT_MODE_ISO_AC_PC_6ACAP

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**performed**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000

**usedReference**: [Device: extension = 8760; identifier = UDI; manufacturer = BREAS Medical; serialNumber = VIVO45-SN-789012; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-breas.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "beispiel-beatmung-breas",
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
        "code" : "1258985005",
        "display" : "Invasive mechanical ventilation (regime/therapy)"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "475147",
        "display" : "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
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
      "reference" : "Device/beispiel-beatmungsgeraet-breas"
    }
  ]
}

```
