# Beispiel Channel ResMed Atemfrequenz - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Channel ResMed Atemfrequenz**

## Example Device: Beispiel Channel ResMed Atemfrequenz

Profile: [T-CABS Device Channel Beatmungsgeraet](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-channel`/CHAN-RESMED-ATEMFREQ-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Atemfrequenz Measurement Channel | User Friendly name |

**type**: MDC_DEV_SYS_PT_VENT_CHAN

**parent**: [Device: identifier = http://tcabs.example.org/device-vmd#VMD-RESMED-ATEMFREQ-001; type = MDC_DEV_SYS_PT_VENT_VMD](Device-beispiel-vmd-resmed-atemfrequenz.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-channel-resmed-atemfrequenz",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-channel",
      "value" : "CHAN-RESMED-ATEMFREQ-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "Atemfrequenz Measurement Channel",
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
    "reference" : "Device/beispiel-vmd-resmed-atemfrequenz"
  }
}

```
