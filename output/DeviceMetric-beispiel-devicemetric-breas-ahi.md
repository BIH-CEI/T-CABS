# Example DeviceMetric BREAS AHI - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example DeviceMetric BREAS AHI**

## Example DeviceMetric: Example DeviceMetric BREAS AHI

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-BREAS-AHI-001

**type**: MDC_SABTE_AHI_TOTAL

**unit**: {score}

**source**: [Device: extension = 8760; identifier = UDI; manufacturer = BREAS Medical; serialNumber = VIVO45-SN-789012; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-breas.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-BREAS-AHI-001; type = MDC_DEV_CHAN](Device-beispiel-channel-breas-ahi.md)

**operationalStatus**: On

**color**: Color Green

**category**: Calculation

**measurementPeriod**: Once per 1 hour

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Offset | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-breas-ahi",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-BREAS-AHI-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "8410792",
        "display" : "MDC_SABTE_AHI_TOTAL"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}",
        "display" : "{score}"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-breas"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-breas-ahi"
  },
  "operationalStatus" : "on",
  "color" : "green",
  "category" : "calculation",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 1,
      "periodUnit" : "h"
    }
  },
  "calibration" : [
    {
      "type" : "offset",
      "state" : "calibrated"
    }
  ]
}

```
