# Beispiel arterieller Blutdruck Messung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel arterieller Blutdruck Messung**

## Example Observation: Beispiel arterieller Blutdruck Messung

Profile: [T-CABS Observation Arterieller Blutdruck](StructureDefinition-t-cabs-observation-arteriellerblutdruck.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Blood pressure panel with all children optional

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 09:00:00+0000 --> 2024-01-15 09:00:00+0000

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)

> **component****code**:Systolic blood pressure**value**: 125 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**:Diastolic blood pressure**value**: 80 mm[Hg](Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-ArteriellerBlutdruck-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellerblutdruck"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories",
          "code" : "phd-observation"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "85354-9",
        "display" : "Blood pressure panel with all children optional"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "150016"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T09:00:00Z",
    "end" : "2024-01-15T09:00:00Z"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8480-6"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 125,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8462-4"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 80,
        "unit" : "mm[Hg]",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    }
  ]
}

```
