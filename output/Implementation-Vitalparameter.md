# Implementation Vitalparameter - v0.1.0

* [**Table of Contents**](toc.md)
* **Implementation Vitalparameter**

## Implementation Vitalparameter

Diese Seite beschreibt die Implementierung der Vitalparameter-Profile für den Hersteller **Doccla**. Die Profile basieren auf der FHIR-Spezifikation [Personal Health Device (PHD)](https://hl7.org/fhir/uv/phd/STU1.1/) und ermöglichen standardkonforme Übertragungen von Vitalparametern. Im Folgenden wird die Struktur der gerätebezogenen Informationen erklärt und durch Beispiele im JSON-format dargestellt. Im Anschluss wird auf die Struktur der Vitalparameter in gleicher Weise eingegangen.

### Device-Struktur

PHD-konforme Device-Architektur:

* **PHD (Personal Health Device)**: Messgerät für Vitalparameter (z.B. Pulsoximeter)
* **PHG (Personal Health Gateway)**: Gateway für Datenübertragung (Tablet)

Die Struktur der Devices unterteilt sich in Messgeräte (PHD) und Gateways (PHG). Die PHDs messen die jeweiligen Vitalparameter und senden diese über eine Bluetooth-Verbindung zum PHG. Das Gateway leitet die gemessenen Werte in einem regelmäßigen Rhythmus weiter an die Cloud des Herstellers.

#### PHD Device

Beispielinstanz eines Pulsoximeter:

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
  "serialNumber": "PHD-SN-345678",
  "manufacturer": "Doccla GmbH",
  "modelNumber": "DPO-2024",
  "patient": {
    "reference": "Patient/tcabs-patient-example"
  }
}

```

#### PHG Gateway

Beispielinstanz eines Tablets, welches als Gatewaydevice fungiert:

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

### Implementierte Vitalparameter

#### Arterielle Sauerstoffsättigung (SpO2)

* **Profil**: `T_CABS_Observation_ArterielleSPO2`
* **LOINC Code**: `2708-6` (Oxygen saturation in Arterial blood)
* **IEEE 11073**: `150456` (MDC_PULS_OXIM_SAT_O2)
* **Einheit**: `%` (Prozent)
* **Beispiel**: `Example-ArterielleSPO2-Doccla`

#### Arterieller Blutdruck

* **Profil**: `T_CABS_Observation_ArteriellerBlutdruck`
* **LOINC Code**: `85354-9` (Blood pressure panel with all children optional)
* **IEEE 11073**: `150017` (MDC_PRESS_BLD_NONINV)
* **Komponenten**: Systolisch, Diastolisch, Mittlerer arterieller Druck
* **Beispiel**: `Example-ArteriellerBlutdruck-Doccla`

#### Atemfrequenz

* **Profil**: `T_CABS_Observation_Atemfrequenz`
* **LOINC Code**: `9279-1` (Respiratory rate)
* **IEEE 11073**: `151562` (MDC_RESP_RATE)
* **Einheit**: `/min` (pro Minute)
* **Beispiel**: `Example-Atemfrequenz-Doccla`

#### Body Mass Index (BMI)

* **Profil**: `T_CABS_Observation_BMI`
* **LOINC Code**: `39156-5` (Body mass index (BMI) [Ratio])
* **IEEE 11073**: `188736` (MDC_RATIO_MASS_BODY_LEN_SQ)
* **Einheit**: `kg/m2`
* **Beispiel**: `Example-BMI-Doccla`

#### FEV1 (Forciertes Exspiratorisches Volumen)

* **Profil**: `T_CABS_Observation_FEV1`
* **LOINC Code**: `20150-9` (FEV1)
* **IEEE 11073**: `151980` (MDC_VOL_AWAY_LUNG)
* **Einheit**: `L` (Liter)
* **Beispiel**: `Example-FEV1-Doccla`

#### Gehstrecke (6-Minuten-Gehtest)

* **Profil**: `T_CABS_Observation_Gehstrecke`
* **LOINC Code**: `64098-7` (Six minute walk distance)
* **IEEE 11073**: `188744` (MDC_LEN_WALK)
* **Einheit**: `m` (Meter)
* **Beispiel**: `Example-Gehstrecke-Doccla`

#### Herzfrequenz

* **Profil**: `T_CABS_Observation_Herzfrequenz`
* **LOINC Code**: `8867-4` (Heart rate)
* **IEEE 11073**: `147842` (MDC_PULS_RATE_NON_INV)
* **Einheit**: `/min` (pro Minute)
* **Beispiel**: `Example-Herzfrequenz-Doccla`

#### Körpergewicht

* **Profil**: `T_CABS_Observation_Koerpergewicht`
* **LOINC Code**: `29463-7` (Body weight)
* **IEEE 11073**: `188736` (MDC_MASS_BODY_ACTUAL)
* **Einheit**: `kg` (Kilogramm)
* **Beispiel**: `Example-Koerpergewicht-Doccla`

#### Körpertemperatur

* **Profil**: `T_CABS_Observation_Koerpertemperatur`
* **LOINC Code**: `8310-5` (Body temperature)
* **IEEE 11073**: `188420` (MDC_TEMP_BODY)
* **Einheit**: `Cel` (Celsius)
* **Beispiel**: `Example-Koerpertemperatur-Doccla`

### PHD-Standards Compliance

#### Category-Codes

Alle Vitalparameter-Observations müssen die erforderlichen Category-Codes enthalten:

```
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
]

```

#### Code-Slicing

Jede Observation verwendet sowohl LOINC als auch IEEE 11073 Codes, welche jeweils innerhalb eines Codings mit Angabe des zugehöhrigem CodeSystems abgebildet werden:

```
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
}

```

#### Messzeitpunkt/Zeitraum

Verwendet `effectivePeriod` für Messzeiträume oder `effectiveDateTime` für Zeitpunkte:

```
"effectivePeriod": {
  "start": "2024-01-15T08:15:00Z",
  "end": "2024-01-15T08:15:00Z"
}

```

```
"effectiveDateTime": "2024-01-15T08:15:00Z"

```

#### Patient-Referenzen

Alle Observations referenzieren den zugehörigen Patienten:

```
"subject": {
  "reference": "Patient/tcabs-patient-example"
}

```

### Implementierungs-Hinweise

#### Device-Setup

* PHD und PHG Devices müssen vor der ersten Observation erstellt werden
* Patient-Referenzen sind in allen Device-Instanzen erforderlich

#### Code-Systeme

* LOINC und IEEE 11073-Codes für die interoperable Kodierung der Parameter
* UCUM-Einheiten für standardisierte Werte

#### Validierung

* Alle Profile sind PHD-IG konform
* Code-Slices sind required bindings
* Category-Codes sind mandatory

### Technische Spezifikationen

#### ValueSets

* Verwendung von FHIR/PHD ValueSets
* Keine herstellerspezifischen ValueSets erforderlich

#### Extensions

* Nutzung der PHD-Standard Extensions
* Keine Doccla-spezifischen Extensions notwendig

#### Constraints

* Pflichtfelder gemäß PHD-Profile
* Kardinalitäten entsprechend den Basis-Profilen

