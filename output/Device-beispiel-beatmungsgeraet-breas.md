# Example Ventilator BREAS - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Ventilator BREAS**

## Example Device: Example Ventilator BREAS

Profile: [T-CABS Device MDS Home Ventilator](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.md)

**Operating hours extension**: 8760

**identifier**: UDI/BREAS-VIVO45-12345

**manufacturer**: BREAS Medical

**serialNumber**: VIVO45-SN-789012

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Vivo45 | Model name |

**type**: MDC_DEV_SYS_PT_VENT_MDS

**patient**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**owner**: [Organization Jochum GmbH](Organization-beispiel-provider-jochum.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-beatmungsgeraet-breas",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours",
      "valueUnsignedInt" : 8760
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
      "value" : "BREAS-VIVO45-12345"
    }
  ],
  "manufacturer" : "BREAS Medical",
  "serialNumber" : "VIVO45-SN-789012",
  "deviceName" : [
    {
      "name" : "Vivo45",
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
    "reference" : "Organization/beispiel-provider-jochum"
  }
}

```
