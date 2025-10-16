Diese Seite beschreibt die Implementierung der beatmungsbezogenen Profile für die Gerätehersteller **BREAS**, **Löwenstein** und **ResMed**. Die Profile basieren auf der Spezifikation [Point-of-Care Device Implementation Guide](https://hl7.org/fhir/uv/pocd/2021Sep/) (PoCD) und somit auf den IEEE 11073 Standards. Die bestehenden Profile wurden um weitere T_CABS spezifische Parameter erweitert und ermöglichen eine interoperable Übertragung von beatmungsbezogenen Informationen.

### Device-Struktur
PoCD-konforme Device-Architektur:

1. **MDS** (Medical Device System): Physisches Beatmungsgerät
2. **VMD** (Virtual Medical Device): Parameter-spezifisches Subsystem
3. **Channel**: Geräte-Kanal zur Gruppierung verwandter Metriken

Die Devices sind durch Referenzen über das Element `Device.parent` referenziert, wobei diese Kette an Referenzen stets bei dem Channel beginnt und über das VMD beim MDS als physisches Beatmungsgerät endet. Die VMDs und Channels sind stets parameter-spezifisch,
Metriken sind in der Ressource DeviceMetric abgebildet und geben u.a. an, ob der referenzierte Wert eingestellt oder gemessen ist. Sie refernzieren über das Element `DeviceMetric.source` das physische Beatmungsgerät (MDS) und über das Element `DeviceMetric.parent` die spezifischen Channel als Gruppierer.


#### MDS (Beatmungsgerät)
Beispielinstanz eines Vivo45 Beatmungsgerätes des Herstellers BREAS:

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

#### VMD (Parameter-spezifisches Subsystem)

Beispielinstanz eines virtuellen Subsystems des Parameters AHI:
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
        "code": "70002",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_DEV_SYS_PT_VENT_VMD"
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

#### Channel und Metrik

Beispielinstanz eines Gerätekanals des Parameters AHI:

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
        "code": "70003",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_DEV_SYS_PT_VENT_CHAN"
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
Beispielinstanz einer Metrik des Parameters AHI:
**DeviceMetric:**
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


### Observation-Hierarchie
Alle Beatmungsparameter-Observations erben vom abstrakten Profil `T_CABS_Observation_Beatmungsparameter`, welches vom [NumericObservation-Profil](https://hl7.org/fhir/uv/pocd/2021Sep/StructureDefinition-NumericObservation.html) der PoCD Spezifikation erbt und als Parent-Profil für die spezifischen Parameter innerhalb der T-CABS Studie verwendet wird.
In diesem Profil sind nur geringfügige Änderungen hinzugefügt, vorallem die notwendige Referenz auf die Beatmungsprozedur, welche den genauen Beatmungsmodus darstellt. Des Weiteren gibt es Grenzwertdefinition (min, max) für Parametereinstellungen.


### Parameter

#### AHI (Apnoe-Hypopnoe-Index)
- **Profil**: `T_CABS_Observation_AHI`
- **IEEE 11073 Code**: `8410792` (MDC_SABTE_AHI_TOTAL)
- **Einheit**: `{score}` (Score)
- **Beispiel**: `Example-AHI-BREAS`

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

#### AMV (Atemminutenvolumen)
- **Profil**: `T_CABS_Observation_AMV`
- **IEEE 11073 Code**: `151996` (MDC_VENT_VOL_MINUTE)
- **Einheit**: `L/min` (Liter pro Minute)
- **Beispiel**: `Example-AMV-BREAS-gemessen`

```json
{
  "resourceType": "Observation",
  "id": "Example-AMV-BREAS-gemessen",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-observation-amv"]
  },
  "code": {
    "coding": [
      {
        "code": "151996",
        "system": "urn:iso:std:iso:11073:10101",
        "display": "MDC_VENT_VOL_MINUTE"
      }
    ]
  },
  "valueQuantity": {
    "unit": "L/min",
    "system": "http://unitsofmeasure.org",
    "code": "L/min",
    "value": 8.5
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
  "effectiveDateTime": "2024-01-15T23:30:00Z",
  "device": {
    "reference": "DeviceMetric/beispiel-devicemetric-breas-amv"
  }
}
```


#### Atemfrequenz (beatmet)
- **Profil**: `T_CABS_Observation_Atemfrequenz_beatmet`
- **IEEE 11073 Code**: `151562` (MDC_RESP_RATE)
- **Einheit**: `/min` (pro Minute)
- **Beispiel**: `Example-Atemfrequenz-ResMed-gemessen`


#### Leckage
- **Profil**: `T_CABS_Observation_Leckage`
- **IEEE 11073 Code**: `151576` (MDC_FLOW_AWAY_LEAK)
- **Einheit**: `L/min` (Liter pro Minute)
- **Beispiel**: `Example-Leckage-ResMed`

#### Synchronisation
- **Profil**: `T_CABS_Observation_Synchronisation`
- **IEEE 11073 Code**: `151594` (MDC_RATIO_TRIG_RESP_SPONT)
- **Einheit**: `%` (Prozent)
- **Beispiel**: `Example-Synchronisation-Loewenstein`


#### Triggered Breaths (Getriggerte Atemzüge)
- **Profil**: `T_CABS_Observation_TriggeredBreaths`
- **IEEE 11073 Code**: `151608` (MDC_RESP_TRIG_PATIENT)
- **Einheit**: `/min` (pro Minute)
- **Beispiel**: `Example-TriggeredBreaths-Loewenstein`

### Procedure-Referenzen
Alle Beatmungsparameter-Observations referenzieren die entsprechende Beatmungsprozedur:

```json
"partOf": [
  {
    "reference": "Procedure/beispiel-beatmung-breas"
  }
]
```

### Beatmungsprozedur (Beatmungsform und Beatmungsmodus)

Um die Beatmung als Prozedur syntaktisch korrekt abzubilden wurde das Profil `T_CABS_Procedure_Beatmung` auf die FHIR Ressource `Procedure` erstellt. Dieses Profil verweist mit Referenzen auf den zugehöhrigen Patienten und das Beatmungsgerät.
Innerhalb der Beatmungsprozedur muss die Beatmungsform und der Beatmungsmodus mit Codes angegeben werden, dafür wurden zwei Valuesets ([T_CABS_ValueSet_Beatmungsform](ValueSet-t-cabs-valueset-Beatmungsform.html), [T_CABS_ValueSet_Beatmungsmodus](ValueSet-t-cabs-valueset-Beatmungsmodus.html)) erstellt.
Die zu kodierenden Inhalte dieser Valuesets sind von der Ärtzeschaft des CABS definiert und vom BIH kodiert worden.
Für eine detaillierte Ansicht wird auf die Seite Terminologien verwiesen.

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


### Implementierungs-Hinweise

#### Device-Setup Reihenfolge
1. MDS (Hauptgerät) erstellen
2. VMDs (parameter-spezifisch) erstellen
3. Channels (parameter-spezifisch) erstellen
4. DeviceMetrics (parameter-spezifisch) erstellen
5. Observations

#### Referenz-Pattern
- Observations referenzieren DeviceMetrics (nicht Devices)
- DeviceMetrics referenzieren Channels
- Channels referenzieren VMDs
- VMDs referenzieren MDS

#### Timing und Messintervalle
- DeviceMetric.measurementPeriod definiert Messintervalle
- Observation.effective definiert Messzeitraum oder Zeitpunkt der Messung
- Konsistente Timing-Angaben zwischen Hierarchie-Ebenen

#### Herstellerspezifische Anpassungen
- Device.manufacturer: Name des Herstellers
- Device.owner: Name des Providers
- Device.deviceName.name: Modell-spezifischen Namen

### Standards-Compliance

#### IEEE 11073 Konformität
- Vollständige 4-Ebenen Device-Hierarchie
- IEEE-Codes für alle Parameter
- Korrekte Parent-Referenzen