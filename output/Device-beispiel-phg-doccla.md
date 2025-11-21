# Example PHG Tablet - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example PHG Tablet**

## Example Device: Example PHG Tablet

Profile: [T-CABS Device PHG](StructureDefinition-t-cabs-device-phg.md)

**identifier**: IEEE 11073 System Identifier/PHG-DOCCLA-12345

**manufacturer**: Doccla GmbH

**serialNumber**: PHG-SN-789012

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Doccla Health Tablet | User Friendly name |

**modelNumber**: DHT-2024

**type**: MDC_MOC_VMS_MDS_AHD

### Specializations

| | |
| :--- | :--- |
| - | **SystemType** |
| * | MDC_AI_APPLIANCE_TABLETPC |

### Versions

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value** |
| * | MDC_REG_CERT_DATA_CONTINUA_VERSION | 2.1.0 |

> **property****type**:MDC_REG_CERT_DATA_CONTINUA_CERT_DEV_LIST**valueCode**:MDC_DEV_SPEC_PROFILE_PULS_OXIM,MDC_DEV_SPEC_PROFILE_SCALE,MDC_DEV_METER_STRENGTH_MUSCL,MDC_DEV_SPEC_PROFILE_BP,MDC_DEV_ANALY_AWAY_MULTI_PARAM,MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER,MDC_DEV_SPEC_PROFILE_PEFM

**patient**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "beispiel-phg-doccla",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-device-phg"]
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
      "value" : "PHG-DOCCLA-12345"
    }
  ],
  "manufacturer" : "Doccla GmbH",
  "serialNumber" : "PHG-SN-789012",
  "deviceName" : [
    {
      "name" : "Doccla Health Tablet",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "DHT-2024",
  "type" : {
    "coding" : [
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "531981"
      }
    ]
  },
  "specialization" : [
    {
      "systemType" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "8528192",
            "display" : "MDC_AI_APPLIANCE_TABLETPC"
          }
        ]
      }
    }
  ],
  "version" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "532352",
            "display" : "MDC_REG_CERT_DATA_CONTINUA_VERSION"
          }
        ]
      },
      "value" : "2.1.0"
    }
  ],
  "property" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "532353"
          }
        ]
      },
      "valueCode" : [
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "528388"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "528399"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "69876"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "528391"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "69680"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "528484"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "urn:iso:std:iso:11073:10101",
              "code" : "528405"
            }
          ]
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/tcabs-patient-example"
  }
}

```
