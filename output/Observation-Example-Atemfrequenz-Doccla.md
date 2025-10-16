# Beispiel Atemfrequenz Messung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Atemfrequenz Messung**

## Example Observation: Beispiel Atemfrequenz Messung

Profile: [T-CABS Observation Atemfrequenz](StructureDefinition-t-cabs-observation-atemfrequenz.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Respiratory Rate

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 08:30:00+0000 --> 2024-01-15 08:30:00+0000

**value**: 16 /min(Details: UCUM code/min = '/min')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Atemfrequenz-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-atemfrequenz"
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
        "code" : "9279-1",
        "display" : "Respiratory Rate"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152490"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T08:30:00Z",
    "end" : "2024-01-15T08:30:00Z"
  },
  "valueQuantity" : {
    "value" : 16,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
