Profile: T_CABS_Patient
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
Id: t-cabs-patient
Title: "T-CABS Patient (Pseudonymisiert)"
Description: "Profile for a pseudonymized patient in the T-CABS study, based on the MII pseudonymized patient profile."

* deceased[x] MS

// Beispielinstanz (pseudonymisiert)
Instance: tcabs-patient-example
InstanceOf: T_CABS_Patient
Usage: #example
Title: "T-CABS Patient Example (pseudonymized)"
Description: "Pseudonymized example patient for the T-CABS project"
* identifier[PseudonymisierterIdentifier].system = "http://tcabs.example.org/patients"
* identifier[PseudonymisierterIdentifier].value = "TCABS-PAT-001"
* gender = #male
* deceasedBoolean = false
* managingOrganization = Reference(Organization/CABS)
* generalPractitioner = Reference(Practitioner/tcabs-practitioner-example)
