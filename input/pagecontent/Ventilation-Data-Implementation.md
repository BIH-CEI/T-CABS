This page describes the implementation of ventilation-related profiles. The profiles are based on the [Point-of-Care Device Implementation Guide](https://hl7.org/fhir/uv/pocd/2021Sep/) (PoCD) specification and thus on the IEEE 11073 standards. The existing profiles were extended with additional T-CABS specific parameters and enable interoperable transmission of ventilation-related information.

### Device Structure
PoCD-compliant device architecture:

1. **MDS** (Medical Device System): Physical ventilator device
2. **VMD** (Virtual Medical Device): Parameter-specific subsystem
3. **Channel**: Device channel for grouping related metrics

The devices should be referenced to each other through references via the `Device.parent` element, where this chain of references always starts at the channel and leads via the VMD to the MDS as the physical ventilator device. The VMDs and channels are always parameter-specific.
Metrics are mapped in the DeviceMetric resource and indicate, among other things, whether the referenced value is set or measured. They reference the physical ventilator device (MDS) via the `DeviceMetric.source` element and the specific channel as a grouper via the `DeviceMetric.parent` element.

The following lists the profiles and mandatory elements, i.e., the minimum requirements:

#### MDS (Ventilator Device)
Mandatory specifications for a T-CABS MDS device:
- Device.type - Fixed coding as ventilator device
- Device.extension[operatingHours].valueUnsignedInt - Operating hours
- Device.manufacturer - Manufacturer name
- Device.serialNumber - Serial number
- Device.owner - Reference to provider
- Device.deviceName.type - Fixed code to #model-name
- Device.deviceName.name - Model name
- Device.patient - Reference to patient

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column. For slice specifications (with [] brackets), the sliced element is always repeatable.

Example instance of a Vivo45 ventilator device from manufacturer BREAS:

```json
{
  "resourceType": "Device",
  "id": "beispiel-beatmungsgeraet-breas",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-device-mds-beatmungsgeraet"]
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours",
      "valueUnsignedInt": 120
    }
  ],
  "identifier": [
    {
      "type": {
        "coding": [{"code": "UDI"}]
      },
      "value": "BREAS-VIVO45-12345"
    }
  ],
  "type": {
    "coding": [
      {
        "code": "70001",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_DEV_SYS_PT_VENT_MDS"
      }
    ]
  },
  "deviceName": [
    {
      "type": "model-name",
      "name": "Vivo45"
    }
  ],
  "manufacturer": "BREAS Medical",
  "serialNumber": "VIVO45-SN-789012",
  "owner": {
    "reference": "Organization/beispiel-provider-jochum"
  },
  "patient": {
    "reference": "Patient/tcabs-patient-example"
  }
}
```

#### VMD (Parameter-specific Subsystem)
Mandatory specifications for a T-CABS VMD device:
- Device.type - Parameter-specific coding
- Device.parent - Reference to the ventilator device

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column.

Example instance of a virtual subsystem for the AHI parameter:
```json
{
  "resourceType": "Device",
  "id": "beispiel-vmd-breas-ahi",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-device-vmd-beatmungsgeraet"]
  },
  "identifier": [
    {
      "system": "http://tcabs.example.org/device-vmd",
      "value": "VMD-BREAS-AHI-001"
    }
  ],
  "type": {
    "coding": [
      {
        "code": "69634",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_DEV_VMD"
      }
    ]
  },
  "deviceName": [
    {
      "name": "Vivo45 AHI Module",
      "type": "user-friendly-name"
    }
  ],
  "parent": {
    "reference": "Device/beispiel-beatmungsgeraet-breas"
  }
}
```

#### Channel and Metric
Mandatory specifications for a T-CABS channel device:
- Device.type - Parameter-specific coding
- Device.parent - Reference to the subsystem

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column.

Example instance of a device channel for the AHI parameter:

**Channel:**
```json
{
  "resourceType": "Device",
  "id": "beispiel-channel-breas-ahi",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-device-channel-beatmungsgeraet"]
  },
  "identifier": [
    {
      "system": "http://tcabs.example.org/device-channel",
      "value": "CHAN-BREAS-AHI-001"
    }
  ],
  "type": {
    "coding": [
      {
        "code": "69635",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_DEV_CHAN"
      }
    ]
  },
  "deviceName": [
    {
      "name": "AHI Measurement Channel",
      "type": "user-friendly-name"
    }
  ],
  "parent": {
    "reference": "Device/beispiel-vmd-breas-ahi"
  }
}
```

**DeviceMetric:**
Mandatory specifications for a T-CABS metric DeviceMetric:
- DeviceMetric.type - Parameter-specific coding
- DeviceMetric.source - Reference to the ventilator device
- DeviceMetric.parent - Reference to the device channel
- DeviceMetric.category - Coding whether measurement, setting, or calculation

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column.

Example instance of a metric for the AHI parameter:
```json
{
  "resourceType": "DeviceMetric",
  "id": "beispiel-devicemetric-breas-ahi",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-devicemetric-numericmetric"]
  },
  "identifier": [
    {
      "system": "http://tcabs.example.org/device-metric",
      "value": "DM-BREAS-AHI-001"
    }
  ],
  "type": {
    "coding": [
      {
        "code": "8410792",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_SABTE_AHI_TOTAL"
      }
    ]
  },
  "unit": {
    "coding": [
      {
        "code": "{score}",
        "system": "http://unitsofmeasure.org",
        "display": "{score}"
      }
    ]
  },
  "operationalStatus": "on",
  "category": "calculation",
  "source": {
    "reference": "Device/beispiel-beatmungsgeraet-breas"
  },
  "parent": {
    "reference": "Device/beispiel-channel-breas-ahi"
  }
}
```

### Observation Hierarchy
All ventilation parameter observations inherit from the abstract profile `T_CABS_Observation_Beatmungsparameter`, which inherits from the [NumericObservation profile](https://hl7.org/fhir/uv/pocd/2021Sep/StructureDefinition-NumericObservation.html) of the PoCD specification and is used as a parent profile for the specific parameters within the T-CABS study.
In this profile, only minor changes were added, especially the mandatory reference to the ventilation procedure, which represents the exact ventilation mode.
Via the `Observation.referenceRange` element, there is the possibility to define limit value definitions (min, max) for parameter settings; these values can be used, for example, to trigger device alarms.

### Ventilation Parameters
At this point, only the mandatory elements of all ventilation parameter observations are listed. In the parameter-specific profiles, there are sometimes additional requirements (e.g., minimum pressure and maximum ventilation pressure in the profile `T_CABS_Observation_DruckMinMax`)

Mandatory specifications for a T-CABS ventilation parameter observation:
- Observation.status - Status coding
- Observation.code - Parameter coding
- Observation.subject - Reference to the patient
- Observation.effective - Time point or period of measurement or setting
- Observation.device - Reference to the metric
- Observation.partOf - Reference to the ventilation procedure

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column.

Example instance of an AHI (Apnea-Hypopnea Index):
```json
{
  "resourceType": "Observation",
  "id": "Example-AHI-BREAS",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-observation-ahi"]
  },
  "code": {
    "coding": [
      {
        "code": "8410792",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_SABTE_AHI_TOTAL"
      }
    ]
  },
  "effectivePeriod": {
    "start": "2024-01-15T22:00:00Z",
    "end": "2024-01-16T06:00:00Z"
  },
  "valueQuantity": {
    "system": "http://unitsofmeasure.org",
    "code": "{score}",
    "value": 5.2,
    "unit": "{score}"
  },
  "partOf": [
    {
      "reference": "Procedure/beispiel-beatmung-breas"
    }
  ],
  "status": "final",
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  },
  "device": {
    "reference": "DeviceMetric/beispiel-devicemetric-breas-ahi"
  }
}
```

Example instance of a target volume:
```json
{
  "resourceType": "Observation",
  "id": "Example-TargetVolume-BREAS",
  "meta": {
    "profile": [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-targetvolume"
    ]
  },
  "code": {
    "coding": [
      {
        "code": "153212",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
      }
    ]
  },
  "effectivePeriod": {
    "start": "2024-10-07T21:00:00+02:00",
    "end": "2024-10-07T21:30:00+02:00"
  },
  "valueQuantity": {
    "unit": "mL",
    "system": "http://unitsofmeasure.org",
    "code": "mL",
    "value": 450
  },
  "referenceRange": {
    "low": {
      "value": 300,
      "unit": "mL",
      "system": "http://unitsofmeasure.org",
      "code": "mL"
    },
    "high": {
      "value": 800,
      "unit": "mL",
      "system": "http://unitsofmeasure.org",
      "code": "mL"
    },
    "type": {
      "coding": [
        {
          "code": "therapeutic",
          "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning"
        }
      ]
    }
  },
  "partOf": [
    {
      "reference": "Procedure/beispiel-beatmung-breas"
    }
  ],
  "status": "final",
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  },
  "device": {
    "reference": "DeviceMetric/beispiel-devicemetric-breas-targetvolume"
  }
}
```

### Ventilation Procedure (Ventilation Form and Ventilation Mode)

To syntactically correctly represent ventilation as a procedure, the profile `T_CABS_Procedure_Beatmung` was created on the FHIR resource `Procedure`. This profile refers to the associated patient and ventilator device through references.
Within the ventilation procedure, the ventilation form and ventilation mode must be specified with codes. For this purpose, two value sets ([T_CABS_ValueSet_Beatmungsform](ValueSet-t-cabs-valueset-Beatmungsform.html), [T_CABS_ValueSet_Beatmungsmodus](ValueSet-t-cabs-valueset-Beatmungsmodus.html)) were created.
The contents to be coded in these value sets are defined by the physicians of CABS and coded by BIH.
For a detailed view, reference is made to the Terminologies page.

Mandatory specifications for a T-CABS ventilation procedure:
- Procedure.status - Status coding
- Procedure.category.coding[beatmungsform] - Ventilation form coding
- Procedure.code.coding[beatmungsmodus] - Ventilation mode coding
- Procedure.usedReference - Reference to the ventilator device
- Procedure.performedPeriod - Start and end time
- Procedure.subject - Reference to patient

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column. For slice specifications (with [] brackets), the sliced element is always repeatable.

Example instance of a PCV(A) ventilation procedure:

```json
{
  "resourceType": "Procedure",
  "id": "beispiel-beatmung-breas",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-procedure-beatmung"]
  },
  "category": {
    "coding": [
      {
        "code": "1258985005",
        "system": "http://snomed.info/sct",
        "display": "Invasive mechanical ventilation (regime/therapy)"
      }
    ]
  },
  "code": {
    "coding": [
      {
        "code": "475147",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
      }
    ]
  },
  "performedPeriod": {
    "start": "2024-01-15T22:00:00Z",
    "end": "2024-01-16T06:00:00Z"
  },
  "usedReference": [
    {
      "reference": "Device/beispiel-beatmungsgeraet-breas"
    }
  ],
  "status": "completed",
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  }
}
```

### Device Alerts (R6 Backport)

FHIR R6 introduces [`DeviceAlert`](https://hl7.org/fhir/6.0.0-ballot4/devicealert.html) as a dedicated resource for device-generated alarms. Since T-CABS targets FHIR R4, this IG backports the R6 DeviceAlert concept using `Basic` as the carrier resource following [FHIR guidance on Basic](http://hl7.org/fhir/R4/basic.html):

- **`Basic.code`** is fixed to `device-alert`, identifying the resource as a DeviceAlert
- **`Basic.subject`** references the patient
- All R6 DeviceAlert elements are represented as **extensions**

#### Extension Mapping to R6 DeviceAlert

Element paths refer to the R6 DeviceAlert resource as of ballot4 (May 2026). Note that some elements (e.g. `derivedFrom`) are BackboneElements in R6; the backport flattens these to simple typed extensions.

| Extension | R6 Element | Type | Card. |
|-----------|------------|------|-------|
| `alertStatus` | `status` | code | 1..1 |
| `alertCode` | `code` | CodeableConcept | 1..1 |
| `alertPresence` | `presence` | boolean | 1..1 |
| `alertOccurrence` | `occurrence[x]` | Period (R6 also allows dateTime) | 0..1 |
| `alertLimit` | `derivedFrom.limit` (flattened to resource level) | Range | 0..1 |
| `alertType` | `type` | CodeableConcept | 0..1 |
| `alertPriority` | `priority` | CodeableConcept | 0..1 |
| `alertDevice` | `device` | Reference(Device \| DeviceMetric) | 0..1 |
| `alertDerivedFrom` | `derivedFrom.observation` (flattened, BackboneElement substructure not preserved) | Reference(Observation) | 0..* |
| `alertLabel` | `label` | string | 0..1 |
| `alertSignal` | `signal` (with `activationState`, `presence`, `manifestation`, `indication` sub-extensions) | complex | 0..* |

Elements from R6 DeviceAlert that are **not yet backported** in T-CABS 0.2.x: `identifier`, `procedure`, `category`, `encounter`, `acknowledged`, `acknowledgedBy`, `location`, `derivedFrom.component`, `signal.annunciator`, `signal.type`. Signal codes for `presence` (T-CABS: `present`/`absent`) and `manifestation` (`audible`/`vibration`) diverge from R6 (`on`/`latched`/`off`/`ack`; `auditory`/`vibratory`) — full alignment is planned for v0.3.0.

Example instance of a Diconnection alarm:
```json
{
  "resourceType": "Basic",
  "id": "Example-DeviceAlert-Disconnection-Loewenstein",
  "meta": {
    "profile": [
      "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-alert-disconnection"
    ]
  },
  "extension": [
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-status",
      "valueCode": "completed"
    },
    {
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "197172",
            "system": "urn:iso:std:iso:11073:10101",
            "display": "MDC_EVT_VENT_DISCONN"
          },
          {
            "code": "416260008",
            "system": "http://snomed.info/sct",
            "display": "Ventilator disconnection alarm (situation)"
          }
        ]
      },
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-code"
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-presence",
      "valueBoolean": false
    },
    {
      "valuePeriod": {
        "start": "2024-01-15T02:00:00+01:00",
        "end": "2024-01-15T02:00:45+01:00"
      },
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-occurrence"
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "technical",
            "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert",
            "display": "Technical"
          }
        ]
      }
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-priority",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "high",
            "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert",
            "display": "High"
          }
        ]
      }
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-device",
      "valueReference": {
        "reference": "Device/beispiel-beatmungsgeraet-loewenstein"
      }
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-label",
      "valueString": "DISCONNECT"
    },
    {
      "extension": [
        {
          "url": "activationState",
          "valueCode": "off"
        },
        {
          "url": "manifestation",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "audible",
                "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert",
                "display": "Audible"
              }
            ]
          }
        }
      ],
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-signal"
    }
  ],
  "code": {
    "coding": [
      {
        "code": "device-alert",
        "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert",
        "display": "Device Alert"
      }
    ]
  },
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  }
}

```

#### Alarm Detection Patterns

T-CABS distinguishes two patterns by which device alerts are coded and detected:

**Specific-event alarms** (e.g., apnea, disconnection) use specific IEEE 11073 event codes that identify the alarm condition directly:
- `199680` MDC_EVT_APNEA — apnea detected
- `197172` MDC_EVT_VENT_DISCONN — patient disconnected from ventilator

**Limit-event alarms** (e.g., pressure too high, tidal volume too low) use generic event codes combined with a mandatory reference to the observation that triggered the alarm:
- `196648` MDC_EVT_HI — measurement exceeded upper limit
- `196670` MDC_EVT_LO — measurement fell below lower limit

For limit-event alarms, `alertDerivedFrom` is mandatory (1..*) and must reference the observation whose limit was exceeded. This reference identifies which parameter triggered the alarm. Their **priority is not fixed** at the profile level: the device assigns it per occurrence according to the severity of the exceedance (R6 keeps `priority` as an instance-level element). Event alarms keep a fixed priority, since the event itself determines urgency.

These two patterns are reflected in the profile hierarchy: concrete profiles derive from the abstract [Event Alarm](StructureDefinition-t-cabs-device-alert-event.html) or [Limit Alarm](StructureDefinition-t-cabs-device-alert-limit.html) profile, which in turn derive from the [DeviceAlert Base](StructureDefinition-t-cabs-device-alert.html).

This classification is independent of `alertType` (physiological vs. technical). A disconnection alarm uses the specific-event pattern and has `alertType = technical`; an apnea alarm uses the specific-event pattern and has `alertType = physiological`.

Example instance of a pressure high limit alarm:
```json
{
  "resourceType": "Basic",
  "id": "Example-DeviceAlert-DruckHoch-BREAS",
  "meta": {
    "profile": [
      "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-device-alert-druck"
    ]
  },
  "extension": [
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-status",
      "valueCode": "in-progress"
    },
    {
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "196648",
            "system": "urn:iso:std:iso:11073:10101",
            "display": "MDC_EVT_HI"
          },
          {
            "code": "405495005",
            "system": "http://snomed.info/sct",
            "display": "High airway pressure"
          }
        ]
      },
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-code"
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-presence",
      "valueBoolean": true
    },
    {
      "valuePeriod": {
        "start": "2024-01-15T03:22:00+01:00"
      },
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-occurrence"
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "physiological",
            "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert"
          }
        ]
      }
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-priority",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "high",
            "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert"
          }
        ]
      }
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-device",
      "valueReference": {
        "reference": "Device/beispiel-beatmungsgeraet-breas"
      }
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-derived-from",
      "extension": [
        {
          "url": "observation",
          "valueReference": {
            "reference": "Observation/Example-DruckMinMax-ResMed"
          }
        },
        {
          "url": "limit",
          "valueRange": {
            "high": {
              "value": 30,
              "unit": "cm[H2O]",
              "system": "http://unitsofmeasure.org",
              "code": "cm[H2O]"
            }
          }
        }
      ]
    },
    {
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-label",
      "valueString": "Pdruck HOCH"
    }
  ],
  "code": {
    "coding": [
      {
        "code": "device-alert",
        "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert",
        "display": "Device Alert"
      }
    ]
  },
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  }
}
```

### Implementation Notes

#### Device Setup Sequence
1. Create MDS (main device)
2. Create VMDs (parameter-specific)
3. Create channels (parameter-specific)
4. Create DeviceMetrics (parameter-specific)
5. Observations

#### Reference Pattern
- Observations reference DeviceMetrics (not Devices)
- DeviceMetrics reference Channels and MDSs
- Channels reference VMDs
- VMDs reference MDSs

#### Timing and Measurement Intervals
- DeviceMetric.measurementPeriod defines measurement intervals
- Observation.effective defines measurement period or time point of measurement
- Consistent timing specifications between hierarchy levels

#### Manufacturer-specific Adaptations
- Device.manufacturer: Manufacturer name
- Device.owner: Provider name
- Device.deviceName.name: Model-specific name