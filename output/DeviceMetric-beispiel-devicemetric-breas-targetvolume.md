# Example DeviceMetric BREAS Target Volume - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example DeviceMetric BREAS Target Volume**

## Example DeviceMetric: Example DeviceMetric BREAS Target Volume

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-BREAS-TGTVOL-001

**type**: MDC_VENT_VOL_TIDAL_TARGET_AUTO

**unit**: mL

**source**: [Device: extension = 8760; identifier = UDI; manufacturer = BREAS Medical; serialNumber = VIVO45-SN-789012; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-breas.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-BREAS-TGTVOL-001; type = MDC_DEV_CHAN](Device-beispiel-channel-breas-targetvolume.md)

**operationalStatus**: On

**color**: Color Magenta

**category**: Setting

**measurementPeriod**: Once per 10 minutes

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Gain | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-breas-targetvolume",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-BREAS-TGTVOL-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "153212",
        "display" : "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
      }
    ]
  },
  "unit" : {
    "coding" : [
      {
        "system" : "http://unitsofmeasure.org",
        "code" : "mL",
        "display" : "mL"
      }
    ]
  },
  "source" : {
    "reference" : "Device/beispiel-beatmungsgeraet-breas"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-breas-targetvolume"
  },
  "operationalStatus" : "on",
  "color" : "magenta",
  "category" : "setting",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 10,
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
