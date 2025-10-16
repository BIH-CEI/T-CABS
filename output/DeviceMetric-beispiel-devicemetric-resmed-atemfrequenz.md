# Beispiel DeviceMetric ResMed Atemfrequenz - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric ResMed Atemfrequenz**

## Example DeviceMetric: Beispiel DeviceMetric ResMed Atemfrequenz

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-RESMED-ATEMFREQ-001

**type**: MDC_VENT_RESP_RATE

**unit**: /min

**source**: [Device: extension = 6500; identifier = UDI; manufacturer = ResMed; serialNumber = STELLAR150-SN-901234; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-resmed.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-RESMED-ATEMFREQ-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-resmed-atemfrequenz.md)

**operationalStatus**: On

**color**: Color Cyan

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
  "id" : "beispiel-devicemetric-resmed-atemfrequenz",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-RESMED-ATEMFREQ-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "151586",
        "display" : "MDC_VENT_RESP_RATE"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "/min",
        "display" : "/min"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-resmed"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-resmed-atemfrequenz"
  },
  "operationalStatus" : "on",
  "color" : "cyan",
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
