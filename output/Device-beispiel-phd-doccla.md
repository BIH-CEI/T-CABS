# Example PHD Measurement Device - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example PHD Measurement Device**

## Example Device: Example PHD Measurement Device

Profile: [T-CABS Device PHD](StructureDefinition-t-cabs-device-phd.md)

**identifier**: IEEE 11073 System Identifier/PHD-DOCCLA-67890

**manufacturer**: Masimo

**serialNumber**: PHD-SN-345678

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Pulsoximeter | User Friendly name |

**modelNumber**: DPO-2024

**type**: MDC_MOC_VMS_MDS_SIMP

### Specializations

| | | |
| :--- | :--- | :--- |
| - | **SystemType** | **Version** |
| * | MDC_DEV_SPEC_PROFILE_PULS_OXIM | 1.0 |

**patient**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**owner**: [Organization Doccla Deutschland GmbH](Organization-beispiel-provider-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-phd-doccla",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-device-phd"]
  },
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers",
            "code" : "SYSID"
          }
        ]
      },
      "system" : "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680",
      "value" : "PHD-DOCCLA-67890"
    }
  ],
  "manufacturer" : "Masimo",
  "serialNumber" : "PHD-SN-345678",
  "deviceName" : [
    {
      "name" : "Pulsoximeter",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "DPO-2024",
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "65573",
        "display" : "MDC_MOC_VMS_MDS_SIMP"
      }
    ]
  },
  "specialization" : [
    {
      "systemType" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "528388",
            "display" : "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
          }
        ]
      },
      "version" : "1.0"
    }
  ],
  "patient" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "owner" : {
    "reference" : "Organization/beispiel-provider-doccla"
  }
}

```
