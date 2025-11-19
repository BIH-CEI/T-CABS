# Example BMI Measurement - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example BMI Measurement**

## Example Observation: Example BMI Measurement

Profile: [T-CABS Observation BMI](StructureDefinition-t-cabs-observation-bmi.md)

**Observation Gateway Device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHG-SN-789012; modelNumber = DHT-2024; type = MDC_MOC_VMS_MDS_AHD](Device-beispiel-phg-doccla.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Body mass index (BMI) [Ratio]

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 10:30:00+0000 --> 2024-01-15 10:30:00+0000

**value**: 25.3 kg/m2(Details: UCUM codekg/m2 = 'kg/m2')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Masimo; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-BMI-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-bmi"
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
        "code" : "39156-5",
        "display" : "Body mass index (BMI) [Ratio]"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "188752"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T10:30:00Z",
    "end" : "2024-01-15T10:30:00Z"
  },
  "valueQuantity" : {
    "value" : 25.3,
    "unit" : "kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
