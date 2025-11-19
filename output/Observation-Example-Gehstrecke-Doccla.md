# Example Walking Distance Measurement - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Walking Distance Measurement**

## Example Observation: Example Walking Distance Measurement

Profile: [T-CABS Observation Walking Distance](StructureDefinition-t-cabs-observation-gehstrecke.md)

**Observation Gateway Device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Doccla GmbH; serialNumber = PHG-SN-789012; modelNumber = DHT-2024; type = MDC_MOC_VMS_MDS_AHD](Device-beispiel-phg-doccla.md)

**status**: Final

**category**: Vital Signs, PHD generated Observation

**code**: Number of steps in 24 hour Measured

**subject**: [Max Mustermann (official) Male, DoB: 1980-01-15 ( Medical record number)](Patient-tcabs-patient-example.md)

**effective**: 2024-01-15 23:59:00+0000 --> 2024-01-15 23:59:00+0000

**value**: 8520 {#}/(24.h)(Details: UCUM code{#}/(24.h) = '{#}/(24.h)')

**device**: [Device: identifier = IEEE 11073 System Identifier; manufacturer = Masimo; serialNumber = PHD-SN-345678; modelNumber = DPO-2024; type = MDC_MOC_VMS_MDS_SIMP](Device-beispiel-phd-doccla.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Example-Gehstrecke-Doccla",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-observation-gehstrecke"
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
        "code" : "41950-7",
        "display" : "Number of steps in 24 hour Measured"
      },
      {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "158033"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/tcabs-patient-example"
  },
  "effectivePeriod" : {
    "start" : "2024-01-15T23:59:00Z",
    "end" : "2024-01-15T23:59:00Z"
  },
  "valueQuantity" : {
    "value" : 8520,
    "unit" : "{#}/(24.h)",
    "system" : "http://unitsofmeasure.org",
    "code" : "{#}/(24.h)"
  },
  "device" : {
    "reference" : "Device/beispiel-phd-doccla"
  }
}

```
