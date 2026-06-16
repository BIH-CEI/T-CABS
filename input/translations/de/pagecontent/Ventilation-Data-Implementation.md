Diese Seite beschreibt die Implementierung der beatmungsbezogenen Profile. Die Profile basieren auf der Spezifikation [Point-of-Care Device Implementation Guide](https://hl7.org/fhir/uv/pocd/2021Sep/) (PoCD) und somit auf den IEEE 11073 Standards. Die bestehenden Profile wurden um weitere T-CABS spezifische Parameter erweitert und ermöglichen eine interoperable Übertragung von beatmungsbezogenen Informationen.

### Device-Struktur
PoCD-konforme Device-Architektur:

1. **MDS** (Medical Device System): Physisches Beatmungsgerät
2. **VMD** (Virtual Medical Device): Parameter-spezifisches Subsystem
3. **Channel**: Geräte-Kanal zur Gruppierung verwandter Metriken

Die Devices sollen untereinander durch Referenzen über das Element `Device.parent` referenziert werden, wobei diese Kette an Referenzen stets bei dem Channel beginnt und über das VMD beim MDS als physisches Beatmungsgerät endet. Die VMDs und Channels sind stets parameter-spezifisch,
Metriken sind in der Ressource DeviceMetric abgebildet und geben u.a. an, ob der referenzierte Wert eingestellt oder gemessen ist. Sie refernzieren über das Element `DeviceMetric.source` das physische Beatmungsgerät (MDS) und über das Element `DeviceMetric.parent` die spezifischen Channel als Gruppierer.

Im Folgenden werden die Profile und die verpflichtenden Elemente, also die Mindestanforderung, aufgelistet:

#### MDS (Beatmungsgerät)
Verpflichtende Angaben für ein T-CABS MDS-Device:
- Device.type - Festgelegte Kodierung als Beatmungsgerät
- Device.extension[operatingHours].valueUnsignedInt - Betriebsstunden
- Device.manufacturer - Herstellername
- Device.serialNumber - Seriennummer
- Device.owner - Referenz auf Provider
- Device.deviceName.type - Festgelegter Code auf #model-name
- Device.deviceName.name - Modellname
- Device.patient - Referenz zum Patient

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben. Bei Sliceangabe (mit [] Klammern) ist das geslicte Element stets wiederholbar.

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
Verpflichtende Angaben für ein T-CABS VMD-Device:
- Device.type - Parameter spezifische Kodierung
- Device.parent - Referenz auf das Beatmungsgerät

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben.

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

#### Channel und Metrik
Verpflichtende Angaben für ein T-CABS Channel-Device:
- Device.type - Parameter spezifische Kodierung
- Device.parent - Referenz auf das Subsystem

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben.

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
Verpflichtende Angaben einer T-CABS Metrik-DeviceMetric:
- DeviceMetric.type - Parameter spezifische Kodierung
- DeviceMetric.source - Referenz auf das Beatmungsgerät
- DeviceMetric.parent - Referenz auf den Geräte-Kanal
- DeviceMetric.category - Kodierung ob Messung, Einstellung oder Berechnung

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben.

Beispielinstanz einer Metrik des Parameters AHI:
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
In diesem Profil sind nur geringfügige Änderungen hinzugefügt, vorallem die verpflichtende Referenz auf die Beatmungsprozedur, welche den genauen Beatmungsmodus darstellt.
Über das Element `Observation.referenceRange` gibt es die Möglichkeit Grenzwertdefinition (min, max) für Parametereinstellungen zu definieren, mit diesen Werten können z.B. Gerätealarme ausgelöst werden.


### Beatmungsparameter
An dieser Stelle sind nur die verpflichteten Elemente aller Beatmungsparameter-Observations angegeben, in den parameter-spezifischen Profilen sind teilweise weitere Vorgaben (z.B. minimaler Druck und maximaler Beatmungsdruck im Profil `T_CABS_Observation_DruckMinMax`)

Verpflichtende Angaben einer T-CABS Beatmungsparameter-Observation:
- Observation.status - Kodierung des Status
- Observation.code - Kodierung des Parameters
- Observation.subject - Referenz auf den Patient
- Observation.effective - Zeitpunkt oder Periode der Messung oder Einstellung
- Observation.device - Referenz zur Metrik
- Observation.partOf - Referenz zur Beatmungsprozedur

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben.


Beispielinstanz eines AHI (Apnoe-Hypopnoe-Index):
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

Beispielinstanz eines Zielvolumens:
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

### Beatmungsprozedur (Beatmungsform und Beatmungsmodus)

Um die Beatmung als Prozedur syntaktisch korrekt abzubilden wurde das Profil `T_CABS_Procedure_Beatmung` auf die FHIR Ressource `Procedure` erstellt. Dieses Profil verweist mit Referenzen auf den zugehöhrigen Patienten und das Beatmungsgerät.
Innerhalb der Beatmungsprozedur muss die Beatmungsform und der Beatmungsmodus mit Codes angegeben werden, dafür wurden zwei Valuesets ([T_CABS_ValueSet_Beatmungsform](ValueSet-t-cabs-valueset-Beatmungsform.html), [T_CABS_ValueSet_Beatmungsmodus](ValueSet-t-cabs-valueset-Beatmungsmodus.html)) erstellt.
Die zu kodierenden Inhalte dieser Valuesets sind von der Ärtzeschaft des CABS definiert und vom BIH kodiert worden.
Für eine detaillierte Ansicht wird auf die Seite Terminologien verwiesen.

Verpflichtende Angaben einer T-CABS Beatmungsprozedur-Procedure:
- Procedure.status - Kodierung des Status
- Procedure.category.coding[beatmungsform] - Kodierung der Beatmungsform
- Procedure.code.coding[beatmungsmodus] - Kodierung des Beatmungsmodus
- Procedure.usedReference - Referenz zum Beatmungsgerät
- Procedure.performedPeriod - Start- und Endzeitpunkt
- Procedure.subject - Referenz zum Patient

**Hinweis:** Die Wiederholbarkeit der Elemente ist das dieser Stelle nicht angegeben, diese ist in den Profildarstellungen in der Spalte "Card." angegeben. Bei Sliceangabe (mit [] Klammern) ist das geslicte Element stets wiederholbar.

Beispielinstanz einer PCV(A)-Beatmungsprozedur:

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


### DeviceAlerts (R6-Backport)

FHIR R6 führt [`DeviceAlert`](https://hl7.org/fhir/6.0.0-ballot4/devicealert.html) als eigenständige Ressource für gerätegenerierte Alarme ein. Da T-CABS auf FHIR R4 basiert, wird das Konzept über `Basic` + Extensions backportet. Die vollständige Element-zu-R6-Zuordnung steht auf der [englischen Implementierungsseite](Ventilation-Data-Implementation.html#device-alerts-r6-backport); die Profilübersicht findet sich unter [Profile](Ventilation-Data-Profiles.html).

#### Alarm-Erkennungsmuster

T-CABS unterscheidet zwei Muster, nach denen Gerätealarme kodiert und erkannt werden:

**Ereignis-Alarme** (z.B. Apnoe, Diskonnektion) tragen einen spezifischen IEEE-11073-Ereigniscode, der die Alarmbedingung direkt identifiziert:
- `199680` MDC_EVT_APNEA — Apnoe erkannt
- `197172` MDC_EVT_VENT_DISCONN — Patient vom Beatmungsgerät getrennt

**Grenzwert-Alarme** (z.B. Druck zu hoch, Tidalvolumen zu niedrig) tragen einen generischen Richtungscode zusammen mit einer Pflicht-Referenz auf die auslösende Observation:
- `196648` MDC_EVT_HI — Messwert überschreitet obere Grenze
- `196670` MDC_EVT_LO — Messwert unterschreitet untere Grenze

Bei Grenzwert-Alarmen ist `alertDerivedFrom` verpflichtend (1..*) und referenziert die Observation, deren Grenze überschritten wurde — diese Referenz identifiziert den auslösenden Parameter. Die **Priorität** ist bei Grenzwert-Alarmen nicht am Profil fixiert: Das Gerät vergibt sie pro Vorkommen nach Schweregrad der Überschreitung (R6 hält `priority` als instanzbezogenes Element). Ereignis-Alarme behalten eine feste Priorität, da das Ereignis selbst die Dringlichkeit bestimmt.

Diese Einordnung ist unabhängig vom `alertType` (physiologisch vs. technisch): Ein Diskonnektionsalarm nutzt das Ereignis-Muster und hat `alertType = technical`; ein Apnoealarm nutzt das Ereignis-Muster und hat `alertType = physiological`.

Die beiden Muster spiegeln sich in der Profilhierarchie: Konkrete Profile erben vom abstrakten [Ereignis-Alarm](StructureDefinition-t-cabs-device-alert-event.html) oder [Grenzwert-Alarm](StructureDefinition-t-cabs-device-alert-limit.html), die wiederum von der [DeviceAlert-Basis](StructureDefinition-t-cabs-device-alert.html) abgeleitet sind.

Beispiel eines Druck-Hoch-Grenzwertalarms (gekürzt; vollständige Instanz siehe [Example-DeviceAlert-DruckHoch-BREAS](Basic-Example-DeviceAlert-DruckHoch-BREAS.html)):
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
      "url": "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "physiological",
            "system": "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-device-alert",
            "display": "Physiological"
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

### Implementierungs-Hinweise

#### Device-Setup Reihenfolge
1. MDS (Hauptgerät) erstellen
2. VMDs (parameter-spezifisch) erstellen
3. Channels (parameter-spezifisch) erstellen
4. DeviceMetrics (parameter-spezifisch) erstellen
5. Observations

#### Referenz-Pattern
- Observations referenzieren DeviceMetrics (nicht Devices)
- DeviceMetrics referenzieren Channels und MDSs
- Channels referenzieren VMDs
- VMDs referenzieren MDSs

#### Timing und Messintervalle
- DeviceMetric.measurementPeriod definiert Messintervalle
- Observation.effective definiert Messzeitraum oder Zeitpunkt der Messung
- Konsistente Timing-Angaben zwischen Hierarchie-Ebenen

#### Herstellerspezifische Anpassungen
- Device.manufacturer: Name des Herstellers
- Device.owner: Name des Providers
- Device.deviceName.name: Modell-spezifischen Namen
