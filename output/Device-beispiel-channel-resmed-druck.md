# Beispiel Channel ResMed Druck Min/Max - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Channel ResMed Druck Min/Max**

## Example Device: Beispiel Channel ResMed Druck Min/Max

Profile: [T-CABS Device Channel Beatmungsgeraet](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-channel`/CHAN-RESMED-DRUCK-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Druck Min/Max Measurement Channel | User Friendly name |

**type**: MDC_DEV_SYS_PT_VENT_CHAN

**parent**: [Device: identifier = http://tcabs.example.org/device-vmd#VMD-RESMED-DRUCK-001; type = MDC_DEV_SYS_PT_VENT_VMD](Device-beispiel-vmd-resmed-druck.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-channel-resmed-druck",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-channel",
      "value" : "CHAN-RESMED-DRUCK-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "Druck Min/Max Measurement Channel",
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
    "reference" : "Device/beispiel-vmd-resmed-druck"
  }
}

```
