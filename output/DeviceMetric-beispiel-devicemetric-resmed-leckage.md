# Beispiel DeviceMetric ResMed Leckage - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric ResMed Leckage**

## Example DeviceMetric: Beispiel DeviceMetric ResMed Leckage

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-RESMED-LECKAGE-001

**type**: MDC_VENT_VOL_LEAK

**unit**: L/min

**source**: [Device: extension = 6500; identifier = UDI; manufacturer = ResMed; serialNumber = STELLAR150-SN-901234; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-resmed.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-RESMED-LECKAGE-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-resmed-leckage.md)

**operationalStatus**: On

**color**: Color Red

**category**: Measurement

**measurementPeriod**: Once per 5 seconds

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Two Point | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-resmed-leckage",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-RESMED-LECKAGE-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152432",
        "display" : "MDC_VENT_VOL_LEAK"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "L/min",
        "display" : "L/min"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-resmed"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-resmed-leckage"
  },
  "operationalStatus" : "on",
  "color" : "red",
  "category" : "measurement",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 5,
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
