# Beispiel Channel BREAS IPAP - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Channel BREAS IPAP**

## Example Device: Beispiel Channel BREAS IPAP

Profile: [T-CABS Device Channel Beatmungsgeraet](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-channel`/CHAN-BREAS-IPAP-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | IPAP Setting Channel | User Friendly name |

**type**: MDC_DEV_SYS_PT_VENT_CHAN

**parent**: [Device: identifier = http://tcabs.example.org/device-vmd#VMD-BREAS-IPAP-001; type = MDC_DEV_SYS_PT_VENT_VMD](Device-beispiel-vmd-breas-ipap.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-channel-breas-ipap",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-channel",
      "value" : "CHAN-BREAS-IPAP-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "IPAP Setting Channel",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "70003",
        "display" : "MDC_DEV_SYS_PT_VENT_CHAN"
      }
    ]
  },
  "parent" : {
    "reference" : "Device/beispiel-vmd-breas-ipap"
  }
}

```
