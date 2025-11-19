# Example Hand Grip Strength Measurement - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Hand Grip Strength Measurement**

## Example Observation: Example Hand Grip Strength Measurement

Profile: [T-CABS Observation Hand Grip Strength](StructureDefinition-t-cabs-observationhandgriffstaerke.md)

**Observation Gateway Device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHG-SN-789012; modelNumber = DHT-2024; type = MDC_MOC_VMS_MDS_AHD](Device-beispiel-phg-doccla.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Grip strength (observable entity)

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 09:30:00+0000 --> 2024-01-15 09:30:00+0000

**value**: 42 kg(Details: UCUM codekg = 'kg')

**bodySite**: Hand structure (body structure)

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Masimo; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Handgriffstaerke-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observationhandgriffstaerke"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/observation-gatewayDevice",
      "valueReference" : {
        "reference" : "Device/beispiel-phg-doccla"
      }
    }
  ],
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
        "system" : "http://snomed.info/sct",
        "code" : "251433001",
        "display" : "Grip strength (observable entity)"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "8455547"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T09:30:00Z",
    "end" : "2024-01-15T09:30:00Z"
  },
  "valueQuantity" : {
    "value" : 42,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "85562004",
        "display" : "Hand structure (body structure)"
      }
    ]
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
