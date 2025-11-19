# Example VMD Löwenstein PEEP Module - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example VMD Löwenstein PEEP Module**

## Example Device: Example VMD Löwenstein PEEP Module

Profile: [T-CABS Device VMD Ventilator](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-vmd`/VMD-LOEW-PEEP-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Prisma VENT30 PEEP Module | User Friendly name |

**type**: MDC_DEV_ANALY_PRESS_AWAY_VMD

**parent**: [Device: extension = 12450; identifier = UDI; manufacturer = Löwenstein Medical; serialNumber = PRISMA30-SN-345678; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-loewenstein.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-vmd-loewenstein-peep",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-vmd",
      "value" : "VMD-LOEW-PEEP-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "Prisma VENT30 PEEP Module",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69706",
        "display" : "MDC_DEV_ANALY_PRESS_AWAY_VMD"
      }
    ]
  },
  "parent" : {
    "reference" : "Device/beispiel-beatmungsgeraet-loewenstein"
  }
}

```
