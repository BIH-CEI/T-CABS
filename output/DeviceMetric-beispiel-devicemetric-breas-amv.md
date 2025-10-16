# Beispiel DeviceMetric BREAS AMV - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric BREAS AMV**

## Example DeviceMetric: Beispiel DeviceMetric BREAS AMV

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-BREAS-AMV-001

**type**: MDC_VENT_VOL_MINUTE

**unit**: L/min

**source**: [Device: extension = 8760; identifier = UDI; manufacturer = BREAS Medical; serialNumber = VIVO45-SN-789012; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-breas.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-BREAS-AMV-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-breas-amv.md)

**operationalStatus**: On

**color**: Color Blue

**category**: Measurement

**measurementPeriod**: Once per 10 seconds

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Two Point | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-breas-amv",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-BREAS-AMV-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "151996",
        "display" : "MDC_VENT_VOL_MINUTE"
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
    "reference" : "Device/beispiel-beatmungsgeraet-breas"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-breas-amv"
  },
  "operationalStatus" : "on",
  "color" : "blue",
  "category" : "measurement",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 10,
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
