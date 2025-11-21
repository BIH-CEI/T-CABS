# Example Ventilator Löwenstein - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ventilator Löwenstein**

## Example Device: Example Ventilator Löwenstein

Profile: [T-CABS Device MDS Home Ventilator](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.md)

**Operating hours extension**: 12450

**identifier**: UDI/LOEW-PRISMA30-67890

**manufacturer**: Löwenstein Medical

**serialNumber**: PRISMA30-SN-345678

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Prisma VENT30 | Model name |

**type**: MDC_DEV_SYS_PT_VENT_MDS

**patient**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**owner**: [Organization Löwenstein Medical](Organization-beispiel-provider-loewenstein.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-beatmungsgeraet-loewenstein",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours",
      "valueUnsignedInt" : 12450
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
      "value" : "LOEW-PRISMA30-67890"
    }
  ],
  "manufacturer" : "Löwenstein Medical",
  "serialNumber" : "PRISMA30-SN-345678",
  "deviceName" : [
    {
      "name" : "Prisma VENT30",
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
    "reference" : "Organization/beispiel-provider-loewenstein"
  }
}

```
