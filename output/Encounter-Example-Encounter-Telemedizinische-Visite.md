# Example Telemedicine Visit - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Telemedicine Visit**

## Example Encounter: Example Telemedicine Visit

Profiles: [T-CABS Encounter Contact](StructureDefinition-t-cabs-encounter-kontakt.md), [MII PR Fall Kontakt mit einer Gesundheitseinrichtung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.fall@2025.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)

**identifier**: `http://tcabs.example.org/encounters`/ENC-TCABS-WEEKLY-001

**status**: Finished

**class**: [ActCode: VR](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html#v3-ActCode-VR) (virtual)

**type**: Konsil

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | attender | [Practitioner Anna Schmidt(official)](Practitioner-tcabs-practitioner-example.md) |

**period**: 2024-01-22 09:00:00+0000 --> 2024-01-22 09:30:00+0000

**serviceProvider**: [Löwenstein Medical](Organization-beispiel-provider-loewenstein.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Example-Encounter-Telemedizinische-Visite",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-encounter-kontakt",
      "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"
    ]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/encounters",
      "value" : "ENC-TCABS-WEEKLY-001"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "VR",
    "display" : "virtual"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://fhir.de/CodeSystem/kontaktart-de",
          "code" : "konsil",
          "display" : "Konsil"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "ATND",
              "display" : "attender"
            }
          ]
        }
      ],
      "individual" : {
        "reference" : "Practitioner/tcabs-practitioner-example"
      }
    }
  ],
  "period" : {
    "start" : "2024-01-22T09:00:00Z",
    "end" : "2024-01-22T09:30:00Z"
  },
  "serviceProvider" : {
    "reference" : "Organization/beispiel-provider-loewenstein",
    "identifier" : {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-LOEW-001"
    },
    "display" : "Löwenstein Medical"
  }
}

```
