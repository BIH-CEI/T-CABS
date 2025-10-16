# Beispiel Körpergewicht Messung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Körpergewicht Messung**

## Example Observation: Beispiel Körpergewicht Messung

Profile: [T-CABS Observation Koerpergewicht](StructureDefinition-t-cabs-observation-koerpergewicht.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Body weight

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 07:30:00+0000 --> 2024-01-15 07:30:00+0000

**value**: 75.8 kg(Details: UCUM codekg = 'kg')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Koerpergewicht-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-koerpergewicht"
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
        "code" : "29463-7",
        "display" : "Body weight"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "188800"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T07:30:00Z",
    "end" : "2024-01-15T07:30:00Z"
  },
  "valueQuantity" : {
    "value" : 75.8,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
