Profile: T_CABS_Patient
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert
Id: t-cabs-patient
Title: "T-CABS Patient (Pseudonymisiert)"
Description: "Profile for a pseudonymized patient in the T-CABS study, based on the MII pseudonymized patient profile."

* deceased[x] MS

// Pflicht-Demographie
* gender 1..1 MS

// Anonymisierung
* address[Strassenanschrift] 0..0   // geerbte MII-Slice zuerst schließen
* address 0..0   // keine Adressdaten in der Studie
// nur das Geburtsjahr (YYYY) — Monat und Tag sind nicht zulässig
* birthDate 1..1 MS
* birthDate obeys tcabs-pat-birthyear

Invariant: tcabs-pat-birthyear
Description: "For anonymization, only the birth year (YYYY) may be provided; month and day are not permitted."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}$')"


// Beispielinstanz (pseudonymisiert)
Instance: tcabs-patient-example
InstanceOf: T_CABS_Patient
Usage: #example
Title: "T-CABS Patient Example (pseudonymized)"
Description: "Pseudonymized example patient for the T-CABS project"
* identifier[PseudonymisierterIdentifier].system = "http://tcabs.example.org/patients"
* identifier[PseudonymisierterIdentifier].value = "TCABS-PAT-001"
* gender = #male
* birthDate = "1985"
* deceasedBoolean = false
* managingOrganization = Reference(Organization/CABS)
* generalPractitioner = Reference(Practitioner/tcabs-practitioner-example)
