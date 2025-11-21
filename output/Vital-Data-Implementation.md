# Vital Data Implementation - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Vital Data Implementation**

## Vital Data Implementation

This page describes the implementation of vital parameter profiles. The profiles are based on the FHIR specification [Personal Health Device (PHD)](https://hl7.org/fhir/uv/phd/STU1.1/) and enable standard-compliant transmission of vital parameters. The following explains the structure of device-related information and demonstrates it through examples in JSON format. Subsequently, the structure of vital parameters is discussed in the same manner.

### Device Structure

PHD-compliant device architecture:

* **PHD (Personal Health Device)**: Measurement device for vital parameters (e.g., pulse oximeter)
* **PHG (Personal Health Gateway)**: Gateway for data transmission (tablet)

The structure of devices is divided into measurement devices (PHD) and gateways (PHG). The PHDs measure the respective vital parameters and send them via a Bluetooth connection to the PHG. The gateway forwards the measured values at regular intervals to the manufacturer's cloud.

The following lists the profiles and mandatory elements, i.e., the minimum requirements:

#### PHD Device

Mandatory specifications for a T-CABS PHD device:

* Device.identifier[systemIdIdentifier].type - Fixed to code #SYSID from CodeSystem [ContinuaDeviceIdentifiers](http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers)
* Device.identifier[systemIdIdentifier].system - Fixed to the EUI-64 Identifier System
* Device.identifier[systemIdIdentifier].value - Identifier
* Device.modelNumber - Model number
* Device.manufacturer - Manufacturer name
* Device.serialNumber - Serial number
* Device.type - Fixed coding as PHD device from IEEE 11073-10101 CodeSystem
* Device.specialization.systemType.coding[MDCType] - Coding fixed to CodeSystem IEEE 11073-10101
* Device.specialization.systemType.version - Version of the Specialization Standard
* Device.patient - Reference to Patient

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column. For slice specifications (with [] brackets), the sliced element is always repeatable.

Example instance of a pulse oximeter from manufacturer Doccla:

```
{
  "resourceType": "Device",
  "id": "beispiel-phd-doccla",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-device-phd"]
  },
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers",
            "code": "SYSID"
          }
        ]
      },
      "system": "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680",
      "value": "PHD-DOCCLA-67890"
    }
  ],
  "deviceName": [
    {
      "name": "Doccla Pulse Oximeter",
      "type": "user-friendly-name"
    }
  ],
  "specialization": [
    {
      "systemType": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "528388",
            "display": "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
          }
        ]
      },
      "version": "1.0"
    }
  ],
  "type": {
    "coding": [
      {
        "system": "urn:iso:std:iso:11073:10101",
        "code": "65573",
        "display": "MDC_MOC_VMS_MDS_SIMP"
      }
    ]
  },
  "serialNumber": "PHD-SN-345678",
  "manufacturer": "Doccla GmbH",
  "modelNumber": "DPO-2024",
  "patient": {
    "reference": "Patient/tcabs-patient-example"
  }
}

```

#### PHG Gateway

Mandatory specifications for a T-CABS PHG device:

* Device.identifier[systemIdIdentifier].type - Fixed to code #SYSID from CodeSystem [ContinuaDeviceIdentifiers](http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers)
* Device.identifier[systemIdIdentifier].system - Fixed to the EUI-64 Identifier System
* Device.identifier[systemIdIdentifier].value - Identifier
* Device.type - Fixed coding as PHD device from IEEE 11073-10101 CodeSystem
* Device.specialization.systemType.coding[MDCType] - Fixed coding to 8528192 "MDC_AI_APPLIANCE_TABLETPC" from CodeSystem IEEE 11073-10101
* Device.specialization.systemType.version - Version of the Specialization Standard
* Device.patient - Reference to Patient
* Device.version - Version of software, hardware, firmware, or an internet protocol used
* Device.property - Device configurations (e.g., codings for PHD devices with which communication takes place)

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column. For slice specifications (with [] brackets), the sliced element is always repeatable.

Example instance of a tablet functioning as a gateway device:

```
{
  "resourceType": "Device",
  "id": "beispiel-phg-doccla",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-device-phg"]
  },
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers",
            "code": "SYSID"
          }
        ]
      },
      "system": "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680",
      "value": "PHG-DOCCLA-12345"
    }
  ],
  "deviceName": [
    {
      "name": "Doccla Health Tablet",
      "type": "user-friendly-name"
    }
  ],
  "version": [
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532352",
            "display": "MDC_REG_CERT_DATA_CONTINUA_VERSION"
          }
        ]
      },
      "value": "2.1.0"
    }
  ],
  "specialization": [
    {
      "systemType": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "8528192",
            "display": "MDC_AI_APPLIANCE_TABLETPC"
          }
        ]
      }
    }
  ],
  "property": [
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532353"
          }
        ]
      },
      "valueCode": [
        {
          "coding": [
            {
              "code": "528388",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "528399",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "528426",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "528391",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "69680",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "528484",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        },
        {
          "coding": [
            {
              "code": "528405",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        }
      ]
    }
  ],
  "type": {
    "coding": [
      {
        "system": "urn:iso:std:iso:11073:10101",
        "code": "531981"
      }
    ]
  },
  "serialNumber": "PHG-SN-789012",
  "manufacturer": "Doccla GmbH",
  "modelNumber": "DHT-2024",
  "patient": {
    "reference": "Patient/tcabs-patient-example"
  }
}

```

#### Observation Hierarchy

All vital parameter observations inherit from the abstract profile `T_CABS_Observation_Vitalparameter`, which inherits from the [NumericObservation profile](http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation) of the PHD specification and was used as a parent profile for the specific parameters within the T-CABS study.

### Vital Parameters

At this point, only the mandatory elements of all vital parameter observations are listed. In the parameter-specific profiles, there are sometimes additional requirements (e.g., systolic and diastolic blood pressure in the profile `T_CABS_Observation_ArteriellerBlutdruck`)

Mandatory specifications for a T-CABS vital parameter observation:

* Observation.status - Status coding
* Observation.code.coding[LoincCoding] - Fixed LOINC coding of the parameter
* Observation.code.coding[MDCType] - Fixed IEEE coding of the parameter
* Observation.category[PHD-Observation] - Coding as PHD parameter
* Observation.category[VSCat] - Coding as vital parameter
* Observation.subject - Reference to the patient
* Observation.effective - Time point or period of measurement
* Observation.device - Reference to PHD
* Observation.extension[gatewayDevice] - Reference to PHG

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column. For slice specifications (with [] brackets), the sliced element is always repeatable.

Example instance of arterial oxygen saturation (SpO2):

```
{
  "resourceType": "Observation",
  "id": "Example-ArterielleSPO2-Doccla",
  "meta": {
    "profile": [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellespo2",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell"
    ]
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/phd/StructureDefinition/GatewayDevice",
      "valueReference": {
        "reference": "Device/beispiel-phg-doccla"
      }
    }
  ],
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories",
          "code": "phd-observation"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "2708-6"
      },
      {
        "system": "urn:iso:std:iso:11073:10101",
        "code": "160300"
      }
    ]
  },
  "effectivePeriod": {
    "start": "2024-01-15T08:15:00Z",
    "end": "2024-01-15T08:15:00Z"
  },
  "valueQuantity": {
    "unit": "%",
    "system": "http://unitsofmeasure.org",
    "code": "%",
    "value": 98
  },
  "bodySite": {
    "coding": [
      {
        "code": "11527006",
        "system": "http://snomed.info/sct",
        "display": "Arterial system structure (body structure)"
      }
    ]
  },
  "status": "final",
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  },
  "device": {
    "reference": "Device/beispiel-phd-doccla"
  }
}

```

Example instance of arterial blood pressure:

```
{
  "resourceType": "Observation",
  "id": "Example-ArteriellerBlutdruck-Doccla",
  "meta": {
    "profile": [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellerblutdruck",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell"
    ]
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/phd/StructureDefinition/GatewayDevice",
      "valueReference": {
        "reference": "Device/beispiel-phg-doccla"
      }
    }
  ],
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories",
          "code": "phd-observation"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "85354-9",
        "display": "Blood pressure panel with all children optional"
      },
      {
        "system": "urn:iso:std:iso:11073:10101",
        "code": "150016"
      }
    ]
  },
  "effectivePeriod": {
    "start": "2024-01-15T09:00:00Z",
    "end": "2024-01-15T09:00:00Z"
  },
  "component": [
    {
      "valueQuantity": {
        "unit": "mm[Hg]",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]",
        "value": 125
      },
      "code": {
        "coding": [
          {
            "code": "8480-6",
            "system": "http://loinc.org"
          }
        ]
      }
    },
    {
      "valueQuantity": {
        "unit": "mm[Hg]",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]",
        "value": 80
      },
      "code": {
        "coding": [
          {
            "code": "8462-4",
            "system": "http://loinc.org"
          }
        ]
      }
    }
  ],
  "status": "final",
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  },
  "device": {
    "reference": "Device/beispiel-phd-doccla"
  }
}

```

### Implementation Notes

#### Device Setup

* PHD and PHG devices must be created before the first observation
* Patient references are required in all device instances

#### Code Systems

* LOINC and IEEE 11073 codes for interoperable parameter coding
* UCUM units for standardized values

#### Validation

* All profiles are PHD-IG compliant
* Code slices are required bindings
* Category codes are mandatory

### Technical Specifications

#### ValueSets

* Use of FHIR/PHD ValueSets
* No manufacturer-specific ValueSets required

#### Extensions

* Use of PHD standard extensions
* No Doccla-specific extensions necessary

#### Constraints

* Mandatory fields according to PHD profiles
* Cardinalities according to base profiles

