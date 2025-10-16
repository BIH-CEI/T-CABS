# Beispiel DeviceMetric Löwenstein TI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric Löwenstein TI**

## Example DeviceMetric: Beispiel DeviceMetric Löwenstein TI

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-LOEW-TI-001

**type**: MDC_VENT_TIME_PD_INSP

**unit**: s

**source**: [Device: extension = 12450; identifier = UDI; manufacturer = Löwenstein Medical; serialNumber = PRISMA30-SN-345678; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-loewenstein.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-LOEW-TI-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-loewenstein-ti.md)

**operationalStatus**: On

**color**: orange

**category**: Measurement

**measurementPeriod**: Once per 1 second

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Gain | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-loewenstein-ti",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-LOEW-TI-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152416",
        "display" : "MDC_VENT_TIME_PD_INSP"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "s",
        "display" : "s"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-loewenstein"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-loewenstein-ti"
  },
  "operationalStatus" : "on",
  "color" : "orange",
  "category" : "measurement",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 1,
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
