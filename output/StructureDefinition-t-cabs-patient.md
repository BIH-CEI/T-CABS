# T-CABS Patient - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS Patient**

## Resource Profile: T-CABS Patient 

| | |
| :--- | :--- |
| *Official URL*:http://t-cabs.org/StructureDefinition/t-cabs-patient | *Version*:0.1.0 |
| Draft as of 2025-10-16 | *Computable Name*:T_CABS_Patient |

 
Profil für eine/n Patient/in der T-CABS Studie 

**Usages:**

* Refer to this Profile: [T-CABS Device MDS Heimbeatmungsgerät](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.md), [T-CABS Device PHD](StructureDefinition-t-cabs-device-phd.md), [T-CABS Device PHG](StructureDefinition-t-cabs-device-phg.md), [T-CABS DiagnosticReport Visitenbefund](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md)...Show 6 more,[T-CABS Encounter Kontakt](StructureDefinition-t-cabs-encounter-kontakt.md),[T-CABS Patientengruppe](StructureDefinition-t-cabs-group-patientengruppe.md),[T-CABS Observation Beatmungsparameter (abstract)](StructureDefinition-t-cabs-observation-beatmungsparameter.md),[T-CABS Observation Vitalparamter](StructureDefinition-t-cabs-observation-vitalparameter.md),[T-CABS Procedure Beatmung](StructureDefinition-t-cabs-procedure-beatmung.md)and[T-CABS ResearchSubject Studie](StructureDefinition-t-cabs-researchsubject-studienteilnehmer.md)
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
  "date" : "2025-10-16T18:59:10+02:00",
  "publisher" : "BIH-CEI",
  "contact" : [
    {
      "name" : "BIH-CEI",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://example.org/example-publisher"
        }
      ]
    }
  ],
  "description" : "Profil für eine/n Patient/in der T-CABS Studie",
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
