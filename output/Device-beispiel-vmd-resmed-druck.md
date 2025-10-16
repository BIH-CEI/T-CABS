# Beispiel VMD ResMed Druck Min/Max Module - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel VMD ResMed Druck Min/Max Module**

## Example Device: Beispiel VMD ResMed Druck Min/Max Module

Profile: [T-CABS Device VMD Beatmungsgeraet](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-vmd`/VMD-RESMED-DRUCK-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Stellar150 Druck Min/Max Module | User Friendly name |

**type**: MDC_DEV_SYS_PT_VENT_VMD

**parent**: [Device: extension = 6500; identifier = UDI; manufacturer = ResMed; serialNumber = STELLAR150-SN-901234; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-resmed.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-vmd-resmed-druck",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-vmd",
      "value" : "VMD-RESMED-DRUCK-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "Stellar150 Druck Min/Max Module",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "70002",
        "display" : "MDC_DEV_SYS_PT_VENT_VMD"
      }
    ]
  },
  "parent" : {
    "reference" : "Device/beispiel-beatmungsgeraet-resmed"
  }
}

```
