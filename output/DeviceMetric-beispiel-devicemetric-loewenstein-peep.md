# Example DeviceMetric Löwenstein PEEP - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example DeviceMetric Löwenstein PEEP**

## Example DeviceMetric: Example DeviceMetric Löwenstein PEEP

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-LOEW-PEEP-001

**type**: MDC_VENT_PRESS_AWAY_DELTA

**unit**: mbar

**source**: [Device: extension = 12450; identifier = UDI; manufacturer = Löwenstein Medical; serialNumber = PRISMA30-SN-345678; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-loewenstein.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-LOEW-PEEP-001; type = MDC_DEV_CHAN](Device-beispiel-channel-loewenstein-peep.md)

**operationalStatus**: On

**color**: Color Magenta

**category**: Calculation

**measurementPeriod**: Once per 1 minute

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Gain | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-loewenstein-peep",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-LOEW-PEEP-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152720",
        "display" : "MDC_VENT_PRESS_AWAY_DELTA"
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
    "reference" : "Device/beispiel-beatmungsgeraet-loewenstein"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-loewenstein-peep"
  },
  "operationalStatus" : "on",
  "color" : "magenta",
  "category" : "calculation",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 1,
      "periodUnit" : "min"
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
