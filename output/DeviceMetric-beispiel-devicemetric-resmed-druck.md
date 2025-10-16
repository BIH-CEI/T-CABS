# Beispiel DeviceMetric ResMed Druck Min/Max - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric ResMed Druck Min/Max**

## Example DeviceMetric: Beispiel DeviceMetric ResMed Druck Min/Max

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-RESMED-DRUCK-001

**type**: MDC_PRESS_AWAY

**unit**: mbar

**source**: [Device: extension = 6500; identifier = UDI; manufacturer = ResMed; serialNumber = STELLAR150-SN-901234; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-resmed.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-RESMED-DRUCK-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-resmed-druck.md)

**operationalStatus**: On

**color**: brown

**category**: Measurement

**measurementPeriod**: Once per 30 seconds

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Two Point | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-resmed-druck",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-RESMED-DRUCK-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "151792",
        "display" : "MDC_PRESS_AWAY"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "mbar",
        "display" : "mbar"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-resmed"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-resmed-druck"
  },
  "operationalStatus" : "on",
  "color" : "brown",
  "category" : "measurement",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 30,
      "periodUnit" : "s"
    }
  },
  "calibration" : [
    {
      "type" : "two-point",
      "state" : "calibrated"
    }
  ]
}

```
