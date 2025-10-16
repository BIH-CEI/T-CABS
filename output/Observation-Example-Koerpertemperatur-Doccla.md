# Beispiel Körpertemperatur Messung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Körpertemperatur Messung**

## Example Observation: Beispiel Körpertemperatur Messung

Profile: [T-CABS Observation Koerpertemperatur](StructureDefinition-t-cabs-observation-koerpertemperatur.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Body temperature

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 07:00:00+0000 --> 2024-01-15 07:00:00+0000

**value**: 36.7 °C(Details: UCUM codeCel = 'Cel')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Koerpertemperatur-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-koerpertemperatur"
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
        "code" : "8310-5",
        "display" : "Body temperature"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "150364"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T07:00:00Z",
    "end" : "2024-01-15T07:00:00Z"
  },
  "valueQuantity" : {
    "value" : 36.7,
    "unit" : "°C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
