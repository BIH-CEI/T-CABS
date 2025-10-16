# Beispiel DeviceMetric BREAS IPAP - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DeviceMetric BREAS IPAP**

## Example DeviceMetric: Beispiel DeviceMetric BREAS IPAP

Profile: [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md)

**identifier**: `http://tcabs.example.org/device-metric`/DM-BREAS-IPAP-001

**type**: MDC_SABTE_PRESS_IPAP_SET

**unit**: mbar

**source**: [Device: extension = 8760; identifier = UDI; manufacturer = BREAS Medical; serialNumber = VIVO45-SN-789012; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-breas.md)

**parent**: [Device: identifier = http://tcabs.example.org/device-channel#CHAN-BREAS-IPAP-001; type = MDC_DEV_SYS_PT_VENT_CHAN](Device-beispiel-channel-breas-ipap.md)

**operationalStatus**: On

**color**: lime

**category**: Setting

**measurementPeriod**: Once per 5 minutes

### Calibrations

| | | |
| :--- | :--- | :--- |
| - | **Type** | **State** |
| * | Offset | Calibrated |



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "beispiel-devicemetric-breas-ipap",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-metric",
      "value" : "DM-BREAS-IPAP-001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "8410976",
        "display" : "MDC_SABTE_PRESS_IPAP_SET"
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
    "reference" : "Device/beispiel-beatmungsgeraet-breas"
  },
  "parent" : {
    "reference" : "Device/beispiel-channel-breas-ipap"
  },
  "operationalStatus" : "on",
  "color" : "lime",
  "category" : "setting",
  "measurementPeriod" : {
    "repeat" : {
      "frequency" : 1,
      "period" : 5,
      "periodUnit" : "min"
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
