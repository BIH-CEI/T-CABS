# Beispiel VMD BREAS AMV Module - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel VMD BREAS AMV Module**

## Example Device: Beispiel VMD BREAS AMV Module

Profile: [T-CABS Device VMD Beatmungsgeraet](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-vmd`/VMD-BREAS-AMV-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Vivo45 AMV Module | User Friendly name |

**type**: MDC_DEV_SYS_PT_VENT_VMD

**parent**: [Device: extension = 8760; identifier = UDI; manufacturer = BREAS Medical; serialNumber = VIVO45-SN-789012; type = MDC_DEV_SYS_PT_VENT_MDS](Device-beispiel-beatmungsgeraet-breas.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-vmd-breas-amv",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/device-vmd",
      "value" : "VMD-BREAS-AMV-001"
    }
  ],
  "deviceName" : [
    {
      "name" : "Vivo45 AMV Module",
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
    "reference" : "Device/beispiel-beatmungsgeraet-breas"
  }
}

```
