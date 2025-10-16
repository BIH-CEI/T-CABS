# Beispiel arterielle SPO2 Messung - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel arterielle SPO2 Messung**

## Example Observation: Beispiel arterielle SPO2 Messung

Profile: [T-CABS Observation SPO2](StructureDefinition-t-cabs-observation-arteriellespo2.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Oxygen saturation in Arterial blood

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 08:15:00+0000 --> 2024-01-15 08:15:00+0000

**value**: 98 %(Details: UCUM code% = '%')

**bodySite**: Arterial system structure (body structure)

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-ArterielleSPO2-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-arteriellespo2"
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
        "code" : "2708-6"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "160300"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T08:15:00Z",
    "end" : "2024-01-15T08:15:00Z"
  },
  "valueQuantity" : {
    "value" : 98,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "11527006",
        "display" : "Arterial system structure (body structure)"
      }
    ]
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
