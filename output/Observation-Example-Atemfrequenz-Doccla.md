# Example Respiratory Rate Measurement - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Respiratory Rate Measurement**

## Example Observation: Example Respiratory Rate Measurement

Profiles: [T-CABS Observation Respiratory Rate](StructureDefinition-t-cabs-observation-atemfrequenz.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKAtemfrequenz](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKAtemfrequenz)

**Observation Gateway Device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHG-SN-789012; modelNumber = DHT-2024; type = MDC_MOC_VMS_MDS_AHD](Device-beispiel-phg-doccla.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Respiratory Rate

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 08:30:00+0000 --> 2024-01-15 08:30:00+0000

**value**: 16 /min(Details: UCUM code/min = '/min')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Masimo; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Atemfrequenz-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-atemfrequenz",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKAtemfrequenz"
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
