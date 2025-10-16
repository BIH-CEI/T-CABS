# Beispiel Channel Löwenstein TI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Channel Löwenstein TI**

## Example Device: Beispiel Channel Löwenstein TI

Profile: [T-CABS Device Channel Beatmungsgeraet](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-channel`/CHAN-LOEW-TI-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | TI Measurement Channel | User Friendly name |

**type**: MDC_DEV_SYS_PT_VENT_CHAN

**parent**: [Device: identifier = http://tcabs.example.org/device-vmd#VMD-LOEW-TI-001; type = MDC_DEV_SYS_PT_VENT_VMD](Device-beispiel-vmd-loewenstein-ti.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-channel-loewenstein-ti",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-channel",
      "value" : "CHAN-LOEW-TI-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "TI Measurement Channel",
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
    "reference" : "Device/beispiel-vmd-loewenstein-ti"
  }
}

```
