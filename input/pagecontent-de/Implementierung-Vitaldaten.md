Diese Seite beschreibt die Implementierung der Vitalparameter-Profile. Die Profile basieren auf der FHIR-Spezifikation [Personal Health Device (PHD)](https://hl7.org/fhir/uv/phd/STU2/) und ermöglichen standardkonforme Übertragungen von Vitalparametern.
Im Folgenden wird die Struktur der gerätebezogenen Informationen erklärt und durch Beispiele im JSON-format dargestellt. Im Anschluss wird auf die Struktur der Vitalparameter in gleicher Weise eingegangen.

### Device-Struktur
PHD-konforme Device-Architektur:

- **PHD (Personal Health Device)**: Messgerät für Vitalparameter (z.B. Pulsoximeter)
- **PHG (Personal Health Gateway)**: Gateway für Datenübertragung (Tablet)

Die Struktur der Devices unterteilt sich in Messgeräte (PHD) und Gateways (PHG). Die PHDs messen die jeweiligen Vitalparameter und senden diese über eine Bluetooth-Verbindung zum PHG. Das Gateway leitet die gemessenen Werte in einem regelmäßigen Rhythmus weiter an die Cloud des Herstellers.

Im Folgenden werden die Profile und die verpflichtenden Elemente, also die Mindestanforderung, aufgelistet:

#### PHD Device
Verpflichtende Angaben für ein T-CABS PHD-Device:
- Device.type - Festgelegte Kodierung als PHD-Gerät des IEEE 11073-10101 CodeSystem
- Device.manufacturer - Herstellername
- Device.modelNumber - Modellnummer
- Device.serialNumber - Seriennummer (T-CABS Anforderung)
- Device.specialization[MDCType].systemType - Geräte-Spezialisierung kodiert in IEEE 11073-10101
- Device.specialization[MDCType].version - Version des Spezialisierungsstandards
- Device.version[MDCType] - Firmware-, Software- und/oder Hardwareversion (siehe unten)
- Device.patient - Referenz zum Patient (T-CABS Anforderung)

**Device.version[MDCType]** ist seit PHD 2.0.0 verpflichtend und enthält die Firmware-, Software- und/oder Hardwareversion des Geräts. Jede Versionsart wird als separater Eintrag angelegt. Der `type` identifiziert die Art der Version über einen IEEE 11073-10101 Code: `531976` (MDC_ID_PROD_SPEC_FW) für die Firmwareversion, `531975` (MDC_ID_PROD_SPEC_SW) für die Softwareversion oder `531974` (MDC_ID_PROD_SPEC_HW) für die Hardwareversion. Der `value` enthält die jeweilige Versionsnummer als String (z.B. "1.0.0"). Mindestens ein Eintrag ist Pflicht.

**Hinweis:** Die Wiederholbarkeit der Elemente ist an dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben. Bei Sliceangabe (mit [] Klammern) ist das geslicte Element stets wiederholbar.

Beispielinstanz eines Pulsoximeter des Herstellers Doccla:

```json
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
            "system": "http://terminology.hl7.org/CodeSystem/ContinuaDeviceIdentifiers",
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
      "name": "Doccla Pulsoximeter",
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
  "version": [
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "531976",
            "display": "MDC_ID_PROD_SPEC_FW"
          }
        ]
      },
      "value": "1.0.0"
    }
  ],
  "serialNumber": "PHD-SN-345678",
  "manufacturer": "Doccla GmbH",
  "modelNumber": "DPO-2024",
  "patient": {
    "reference": "Patient/tcabs-patient-example"
  }
}
```

#### PHG Gateway

Verpflichtende Angaben für ein T-CABS PHG-Device:
- Device.type - Festgelegte Kodierung als PHG-Gerät des IEEE 11073-10101 CodeSystem
- Device.specialization[MDCType].systemType - Gateway-Typ kodiert in IEEE 11073-10101 (z.B. 8528192 "MDC_AI_APPLIANCE_TABLETPC")
- Device.version[MDCType] - Version der Software, Hardware, Firmware oder eines verwendeten Internetprotokolls
- Device.patient - Referenz zum Patient (T-CABS Anforderung)
- Device.property[continuaCertPHGProperty] - Unterstützte PHD-Gerätetypen (ein Property-Eintrag pro unterstütztem Gerät)

Optional aber empfohlen:
- Device.identifier[systemIdIdentifier] - System-ID-Identifikator (EUI-64)

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben. Bei Sliceangabe (mit [] Klammern) ist das geslicte Element stets wiederholbar.
Beispielinstanz eines Tablets, welches als Gatewaydevice fungiert:

```json
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
            "system": "http://terminology.hl7.org/CodeSystem/ContinuaDeviceIdentifiers",
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
            "code": "528388",
            "display": "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
          }
        ]
      }
    },
    {
      "systemType": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "528399",
            "display": "MDC_DEV_SPEC_PROFILE_SCALE"
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
            "code": "532355"
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
        }
      ]
    },
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532355"
          }
        ]
      },
      "valueCode": [
        {
          "coding": [
            {
              "code": "528399",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        }
      ]
    },
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532355"
          }
        ]
      },
      "valueCode": [
        {
          "coding": [
            {
              "code": "528391",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        }
      ]
    },
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532355"
          }
        ]
      },
      "valueCode": [
        {
          "coding": [
            {
              "code": "69680",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        }
      ]
    },
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532355"
          }
        ]
      },
      "valueCode": [
        {
          "coding": [
            {
              "code": "528484",
              "system": "urn:iso:std:iso:11073:10101"
            }
          ]
        }
      ]
    },
    {
      "type": {
        "coding": [
          {
            "system": "urn:iso:std:iso:11073:10101",
            "code": "532355"
          }
        ]
      },
      "valueCode": [
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

#### Observation-Hierarchie
Alle Vitalparameter-Observations erben vom abstrakten Profil `T_CABS_Observation_Vitalparameter`, welches vom [NumericObservation-Profil](http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation) der PHD Spezifikation erbt und als Parent-Profil für die spezifischen Parameter innerhalb der T-CABS Studie verwendet wurde.


### Vitalparameter
An dieser Stelle sind nur die verpflichteten Elemente aller Vitalparameter-Observations angegeben, in den parameter-spezifischen Profilen sind teilweise weitere Vorgaben (z.B. systalischer und diastolischer Blutdruck im Profil `T_CABS_Observation_ArteriellerBlutdruck`)

Verpflichtende Angaben einer T-CABS Vitalparameter-Observation:
- Observation.status - Kodierung des Status
- Observation.code.coding - LOINC- und/oder IEEE-Kodierung des Parameters 
- Observation.category[PHD-Observation] - Kodierung als PHD-Parameter
- Observation.category[VSCat] - Kodierung als Vitalparameter
- Observation.subject - Referenz auf den Patient
- Observation.effective - Zeitpunkt oder Periode der Messung
- Observation.device - Referenz zum PHD
- Observation.extension[GatewayDevice] - Referenz zum PHG

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben. Bei Sliceangabe (mit [] Klammern) ist das geslicte Element stets wiederholbar.


Beispielinstanz einer peripheren Sauerstoffsättigung (Pulsoximetrie) (SpO2):
```json
{
  "resourceType": "Observation",
  "id": "Example-SPO2-Doccla",
  "meta": {
    "profile": [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-spo2",
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
          "code": "phd"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "59408-5"
      },
      {
        "system": "urn:iso:std:iso:11073:10101",
        "code": "150456"
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
  "status": "final",
  "subject": {
    "reference": "Patient/tcabs-patient-example"
  },
  "device": {
    "reference": "Device/beispiel-phd-doccla"
  }
}
```

Beispielinstanz eines arteriellen Blutdruckes:
```json
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
          "code": "phd"
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


### Implementierungs-Hinweise

#### Device-Setup
- PHD und PHG Devices müssen vor der ersten Observation erstellt werden
- Patient-Referenzen sind in allen Device-Instanzen erforderlich

#### Code-Systeme
- LOINC und IEEE 11073-Codes für die interoperable Kodierung der Parameter
- UCUM-Einheiten für standardisierte Werte

#### Validierung
- Alle Profile sind PHD-IG konform
- Code-Slices sind required bindings
- Category-Codes sind mandatory

### Technische Spezifikationen

#### ValueSets
- Verwendung von FHIR/PHD ValueSets
- Keine herstellerspezifischen ValueSets erforderlich

#### Extensions
- Nutzung der PHD-Standard Extensions
- Keine Doccla-spezifischen Extensions notwendig

#### Constraints
- Pflichtfelder gemäß PHD-Profile
- Kardinalitäten entsprechend den Basis-Profilen