# T-CABS Patient - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Patient**

## Resource Profile: T-CABS Patient 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-patient | *Version*:0.1.0 |
| Draft as of 2025-11-19 | *Computable Name*:T_CABS_Patient |

 
Profile for a patient in the T-CABS study Compatibility: The T_CABS_Patient profile aims for compatibility with the ISiKPatient version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Patient are also valid against the[ISiKPatient](https://simplifier.net/isik-stufe-5/isikpatient) 

**Usages:**

* Refer to this Profile: [T-CABS Device MDS Home Ventilator](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.md), [T-CABS Device PHD](StructureDefinition-t-cabs-device-phd.md), [T-CABS Device PHG](StructureDefinition-t-cabs-device-phg.md), [T-CABS DiagnosticReport Visit Finding](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)...Show 7 more,[T-CABS Encounter Contact](StructureDefinition-t-cabs-encounter-kontakt.md),[T-CABS Patient Group](StructureDefinition-t-cabs-group-patientengruppe.md),[T-CABS Observation Ventilation Parameter (abstract)](StructureDefinition-t-cabs-observation-beatmungsparameter.md),[T-CABS Observation Ventilation Parameter with Components (abstract)](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.md),[T-CABS Observation Vital Parameter](StructureDefinition-t-cabs-observation-vitalparameter.md),[T-CABS Observation Vital Parameter with Components](StructureDefinition-t-cabs-observation-vitalparametermitkomponenten.md)and[T-CABS Procedure Ventilation](StructureDefinition-t-cabs-procedure-beatmung.md)
* Examples for this Profile: [Patient/tcabs-patient-example](Patient-tcabs-patient-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/t-cabs|current/StructureDefinition/t-cabs-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-t-cabs-patient.csv), [Excel](StructureDefinition-t-cabs-patient.xlsx), [Schematron](StructureDefinition-t-cabs-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "t-cabs-patient",
  "extension" : [
    {
      "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/spdx-license",
            "code" : "CC-BY-4.0",
            "display" : "Creative Commons Attribution 4.0 International"
          }
        ]
      }
    }
  ],
  "url" : "http://t-cabs.org/StructureDefinition/t-cabs-patient",
  "version" : "0.1.0",
  "name" : "T_CABS_Patient",
  "title" : "T-CABS Patient",
  "status" : "draft",
  "date" : "2025-11-19T11:55:29+01:00",
  "publisher" : "BIH-CEI",
  "contact" : [
    {
      "name" : "BIH-CEI",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.bihealth.org/"
        }
      ]
    }
  ],
  "description" : "Profile for a patient in the T-CABS study\nCompatibility:\nThe T_CABS_Patient profile aims for compatibility with the ISiKPatient version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Patient are also valid against the [ISiKPatient](https://simplifier.net/isik-stufe-5/isikpatient)",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "DE",
          "display" : "Germany"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1
      }
    ]
  }
}

```
