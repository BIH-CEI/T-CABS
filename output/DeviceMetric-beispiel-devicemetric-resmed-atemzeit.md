# Beispiel DeviceMetric ResMed Atemzeitverhältnis - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric ResMed Atemzeitverhältnis**

## Example DeviceMetric: Beispiel DeviceMetric ResMed Atemzeitverhältnis

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-RESMED-ATEMZEIT-001

**type**: MDC_TIME_PD_INSP_NORMALIZED_HF

**unit**: %

**source**: [Device: extension = 6500; identifier = UDI; manufacturer = ResMed; serialNumber = STELLAR150-SN-901234; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-resmed.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-RESMED-ATEMZEIT-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-resmed-atemzeit.md)

**operationalStatus**: On

**color**: purple

**category**: Calculation

**measurementPeriod**: Once per 15 seconds

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Gain | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-resmed-atemzeit",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-RESMED-ATEMZEIT-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "153500",
        "display" : "MDC_TIME_PD_INSP_NORMALIZED_HF"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "%",
        "display" : "%"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-resmed"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-resmed-atemzeit"
  },
  "operationalStatus" : "on",
  "color" : "purple",
  "category" : "calculation",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 15,
      "periodUnit" : "s"
    }
  },
  "calibration" : [
    {
      "type" : "gain",
      "state" : "calibrated"
    }
  ]
}

```
