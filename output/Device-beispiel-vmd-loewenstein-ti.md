# Example VMD Löwenstein TI Module - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example VMD Löwenstein TI Module**

## Example Device: Example VMD Löwenstein TI Module

Profile: [T-CABS Device VMD Ventilator](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-vmd`/VMD-LOEW-TI-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | PrismaVent TI Module | User Friendly name |

**type**: MDC_DEV_VMD

**parent**: [Device: extension = 12450; identifier = UDI; manufacturer = Löwenstein Medical; serialNumber = PRISMA30-SN-345678; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-loewenstein.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-vmd-loewenstein-ti",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-vmd",
      "value" : "VMD-LOEW-TI-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "PrismaVent TI Module",
      "type" : "user-friendly-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69634",
        "display" : "MDC_DEV_VMD"
      }
    ]
  },
  "parent" : {
    "reference" : "Device/beispiel-beatmungsgeraet-loewenstein"
  }
}

```
