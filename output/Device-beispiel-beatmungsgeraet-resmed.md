# Example Ventilator ResMed - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ventilator ResMed**

## Example Device: Example Ventilator ResMed

Profile: [T-CABS Device MDS Home Ventilator](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.md)

**Operating hours extension**: 6500

**identifier**: UDI/RESMED-STELLAR150-54321

**manufacturer**: ResMed

**serialNumber**: STELLAR150-SN-901234

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Stellar150 | Model name |

**type**: MDC_DEV_SYS_PT_VENT_MDS

**patient**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**owner**: [Organization Vivisol Deutschland GmbH](Organization-beispiel-provider-vivisol.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-beatmungsgeraet-resmed",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours",
      "valueUnsignedInt" : 6500
    }
  ],
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "code" : "UDI"
          }
        ]
      },
      "value" : "RESMED-STELLAR150-54321"
    }
  ],
  "manufacturer" : "ResMed",
  "serialNumber" : "STELLAR150-SN-901234",
  "deviceName" : [
    {
      "name" : "Stellar150",
      "type" : "model-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "70001",
        "display" : "MDC_DEV_SYS_PT_VENT_MDS"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "owner" : {
    "reference" : "Organization/beispiel-provider-vivisol"
  }
}

```
