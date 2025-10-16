# Beispiel DiagnosticReport Wöchentliche Visite - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel DiagnosticReport Wöchentliche Visite**

## Example DiagnosticReport: Beispiel DiagnosticReport Wöchentliche Visite

Profile: [T-CABS DiagnosticReport Visitenbefund](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)

## Outpatient Progress note 

| | |
| :--- | :--- |
| Subject | Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number) |
| When For | 2024-01-22 09:00:00+0000 |
| Reported | 2024-01-22 10:00:00+0000 |
| Performer | [Practitioner Anna Schmidt](Practitioner-tcabs-practitioner-example.md) |
| Identifier | `http://tcabs.example.org/diagnosticreports`/DR-TCABS-WEEKLY-001 |

**Report Details**

* **Code**: [MDC_VENT_VOL_MINUTE](Observation-Example-AMV-BREAS-gemessen.md)
  * **Value**: 8.5 L/min(Details: UCUM codeL/min = 'L/min')
  * **Flags**: Final
  * **When For**: 2024-01-15 23:30:00+0000
* **Code**: [MDC_SABTE_AHI_TOTAL](Observation-Example-AHI-BREAS.md)
  * **Value**: 5.2 {score}(Details: UCUM code{score} = '{score}')
  * **Flags**: Final
  * **When For**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000
* **Code**: [MDC_VENT_RESP_RATE](Observation-Example-Atemfrequenz-ResMed-gemessen.md)
  * **Value**: 14 /min(Details: UCUM code/min = '/min')
  * **Flags**: Final
  * **When For**: 2024-01-15 23:20:00+0000 --> 2024-01-15 23:20:00+0000
* **Code**: [MDC_VENT_VOL_LEAK](Observation-Example-Leckage-ResMed.md)
  * **Value**: 0.6 L/min(Details: UCUM codeL/min = 'L/min')
  * **Flags**: Final
  * **When For**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000
* **Code**: [MDC_VENT_PRESS_AWAY_DELTA](Observation-Example-PEEP-Loewenstein.md)
  * **Value**: 18 mbar(Details: UCUM codembar = 'mbar')
  * **Flags**: Final
  * **When For**: 2024-01-15 23:35:00+0000 --> 2024-01-15 23:35:00+0000
* **Code**: [MDC_VENT_RESP_BTSD_P_RATE](Observation-Example-TriggeredBreaths-Loewenstein.md)
  * **Value**: 92 %(Details: UCUM code% = '%')
  * **Flags**: Final
  * **When For**: 2024-01-15 22:00:00+0000 --> 2024-01-16 06:00:00+0000
* **Code**: [Body mass index (BMI) [Ratio]](Observation-Example-BMI-Doccla.md)
  * **Value**: 25.3 kg/m2(Details: UCUM codekg/m2 = 'kg/m2')
  * **Flags**: Final
  * **When For**: 2024-01-15 10:30:00+0000 --> 2024-01-15 10:30:00+0000
* **Code**: [Oxygen saturation in Arterial blood](Observation-Example-ArterielleSPO2-Doccla.md)(Arterial system structure (body structure))
  * **Value**: 98 %(Details: UCUM code% = '%')
  * **Flags**: Final
  * **When For**: 2024-01-15 08:15:00+0000 --> 2024-01-15 08:15:00+0000

Patient zeigt stabile Beatmungsparameter über alle Geräte hinweg. BREAS: AMV im Normalbereich bei 8,5 L/min, AHI mit 5,2 innerhalb des therapeutischen Ziels. ResMed: Atemfrequenz stabil bei 14/min, Leckage minimal bei 0,6 L/min. Löwenstein: Synchronisation bei 85%, TriggeredBreaths mit 92% zeigen sehr gute Patient-Gerät-Interaktion. Vitalparameter ebenfalls stabil: BMI 25,3 kg/m², SpO2 98%.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "Example-DiagnosticReport-Woechentliche-Visite",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-diagnosticreport-visitenbefund"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/diagnosticreports",
      "value" : "DR-TCABS-WEEKLY-001"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "34131-3",
        "display" : "Outpatient Progress note"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "encounter" : {
    "reference" : "Encounter/Example-Encounter-Telemedizinische-Visite"
  },
  "effectiveDateTime" : "2024-01-22T09:00:00Z",
  "issued" : "2024-01-22T10:00:00Z",
  "performer" : [
    {
      "reference" : "Practitioner/tcabs-practitioner-example"
    }
  ],
  "result" : [
    {
      "reference" : "Observation/Example-AMV-BREAS-gemessen"
    },
    {
      "reference" : "Observation/Example-AHI-BREAS"
    },
    {
      "reference" : "Observation/Example-Atemfrequenz-ResMed-gemessen"
    },
    {
      "reference" : "Observation/Example-Leckage-ResMed"
    },
    {
      "reference" : "Observation/Example-PEEP-Loewenstein"
    },
    {
      "reference" : "Observation/Example-TriggeredBreaths-Loewenstein"
    },
    {
      "reference" : "Observation/Example-BMI-Doccla"
    },
    {
      "reference" : "Observation/Example-ArterielleSPO2-Doccla"
    }
  ],
  "conclusion" : "Patient zeigt stabile Beatmungsparameter über alle Geräte hinweg. BREAS: AMV im Normalbereich bei 8,5 L/min, AHI mit 5,2 innerhalb des therapeutischen Ziels. ResMed: Atemfrequenz stabil bei 14/min, Leckage minimal bei 0,6 L/min. Löwenstein: Synchronisation bei 85%, TriggeredBreaths mit 92% zeigen sehr gute Patient-Gerät-Interaktion. Vitalparameter ebenfalls stabil: BMI 25,3 kg/m², SpO2 98%."
}

```
