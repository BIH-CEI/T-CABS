# Example Channel BREAS IPAP - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Channel BREAS IPAP**

## Example Device: Example Channel BREAS IPAP

Profile: [T-CABS Device Channel Ventilator](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md)

**identifier**: `http://tcabs.example.org/device-channel`/CHAN-BREAS-IPAP-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | IPAP Setting Channel | User Friendly name |

**type**: MDC_DEV_CHAN

**parent**: [Device: identifier = http://tcabs.example.org/device-vmd#VMD-BREAS-IPAP-001; type = MDC_DEV_VMD](Device-beispiel-vmd-breas-ipap.md)



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
        "code" : "69635",
        "display" : "MDC_DEV_CHAN"
      }
    ]
  },
  "parent" : {
    "reference" : "Device/beispiel-vmd-breas-ipap"
  }
}

```
