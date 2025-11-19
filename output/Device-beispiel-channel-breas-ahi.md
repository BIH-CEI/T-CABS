# Example Channel BREAS AHI - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Channel BREAS AHI**

## Example Device: Example Channel BREAS AHI

Profile: [T-CABS Device Channel Ventilator](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-channel`/CHAN-BREAS-AHI-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | AHI Measurement Channel | User Friendly name |

**type**: MDC_DEV_CHAN

**parent**: [Device: identifier = http://tcabs.example.org/device-vmd#VMD-BREAS-AHI-001; type = MDC_DEV_VMD](Device-beispiel-vmd-breas-ahi.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-channel-breas-ahi",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-channel",
      "value" : "CHAN-BREAS-AHI-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "AHI Measurement Channel",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69635",
        "display" : "MDC_DEV_CHAN"
      }
    ]
  },
  "parent" : {
    "reference" : "Device/beispiel-vmd-breas-ahi"
  }
}

```
