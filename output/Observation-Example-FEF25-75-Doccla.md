# Example FEF25-75% Measurement - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example FEF25-75% Measurement**

## Example Observation: Example FEF25-75% Measurement

Profile: [T-CABS Observation FEF25-75](StructureDefinition-t-cabs-observationfev1fef25-75.md)

**Observation Gateway Device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHG-SN-789012; modelNumber = DHT-2024; type = MDC_MOC_VMS_MDS_AHD](Device-beispiel-phg-doccla.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: FEF 25-75% Predicted

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 09:20:00+0000 --> 2024-01-15 09:20:00+0000

**value**: 4.1 L/s(Details: UCUM codeL/s = 'L/s')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Masimo; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-FEF25-75-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observationfev1fef25-75"
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
        "code" : "69971-0",
        "display" : "FEF 25-75% Predicted"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "188960"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T09:20:00Z",
    "end" : "2024-01-15T09:20:00Z"
  },
  "valueQuantity" : {
    "value" : 4.1,
    "unit" : "L/s",
    "system" : "http://unitsofmeasure.org",
    "code" : "L/s"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
