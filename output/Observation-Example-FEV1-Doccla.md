# Beispiel FEV1 Messung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel FEV1 Messung**

## Example Observation: Beispiel FEV1 Messung

Profile: [T-CABS Observation FEV1](StructureDefinition-t-cabs-observationfev1.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: FEV1

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 09:15:00+0000 --> 2024-01-15 09:15:00+0000

**value**: 2.8 L(Details: UCUM codeL = 'L')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-FEV1-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observationfev1"
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
        "code" : "20150-9",
        "display" : "FEV1"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "152586"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T09:15:00Z",
    "end" : "2024-01-15T09:15:00Z"
  },
  "valueQuantity" : {
    "value" : 2.8,
    "unit" : "L",
    "system" : "http://unitsofmeasure.org",
    "code" : "L"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
