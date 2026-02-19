# Example Body Temperature Measurement - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Body Temperature Measurement**

## Example Observation: Example Body Temperature Measurement

Profiles: [T-CABS Observation Body Temperature](StructureDefinition-t-cabs-observation-koerpertemperatur.md), [https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur|5.1.0](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.person@2025.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur|5.1.0)

**Observation Gateway Device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHG-SN-789012; modelNumber = DHT-2024; type = MDC_MOC_VMS_MDS_AHD](Device-beispiel-phg-doccla.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Body temperature

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 07:00:00+0000 --> 2024-01-15 07:00:00+0000

**value**: 36.7 °C (Details: UCUM codeCel = 'Cel')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Masimo; serialNumber = MASIMO-PO-345678; modelNumber = Radical-7; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-pulsoximeter.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Koerpertemperatur-Doccla",
  "meta" : {
    "profile" : [
      "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-koerpertemperatur",
      "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur|5.1.0"
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
    "reference" : "Device/beispiel-phd-pulsoximeter"
  }
}

```
