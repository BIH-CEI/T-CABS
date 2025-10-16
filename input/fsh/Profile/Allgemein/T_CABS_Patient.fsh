Profile: T_CABS_Patient
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Id: t-cabs-patient
Title: "T-CABS Patient"
Description: "Profil für eine/n Patient/in der T-CABS Studie"

* identifier 1.. 
* name 1..

// Beispielinstanz
Instance: tcabs-patient-example
InstanceOf: T_CABS_Patient
Usage: #example
Title: "T-CABS Patient Example"
Description: "Beispielpatient für das T-CABS Projekt"
* identifier[pid].system = "http://tcabs.example.org/patients"
* identifier[pid].value = "TCABS-PAT-001"
* name[name].family = "Mustermann"
* name[name].given = "Max"
* gender = #male
* birthDate = "1980-01-15"
