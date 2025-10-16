# Beispiel DeviceMetric Löwenstein TriggeredBreaths - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric Löwenstein TriggeredBreaths**

## Example DeviceMetric: Beispiel DeviceMetric Löwenstein TriggeredBreaths

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-LOEW-TRIG-001

**type**: MDC_VENT_RESP_BTSD_P_RATE

**unit**: %

**source**: [Device: extension = 12450; identifier = UDI; manufacturer = Löwenstein Medical; serialNumber = PRISMA30-SN-345678; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-loewenstein.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-LOEW-TRIG-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-loewenstein-triggeredbreaths.md)

**operationalStatus**: On

**color**: Color Yellow

**category**: Measurement

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
  "id" : "beispiel-devicemetric-loewenstein-triggeredbreaths",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-LOEW-TRIG-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152498",
        "display" : "MDC_VENT_RESP_BTSD_P_RATE"
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
    "reference" : "Device/beispiel-beatmungsgeraet-loewenstein"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-loewenstein-triggeredbreaths"
  },
  "operationalStatus" : "on",
  "color" : "yellow",
  "category" : "measurement",
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
