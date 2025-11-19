Profile: T_CABS_Patient
Parent: mii-pr-person-patient
Id: t-cabs-patient
Title: "T-CABS Patient"
Description: "Profile for a patient in the T-CABS study
Compatibility:
The T_CABS_Patient profile aims for compatibility with the ISiKPatient version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Patient are also valid against the [ISiKPatient](https://simplifier.net/isik-stufe-5/isikpatient)"

* identifier 1.. 
* name 1..

// Beispielinstanz
Instance: tcabs-patient-example
InstanceOf: T_CABS_Patient
Usage: #example
Title: "T-CABS Patient Example"
Description: "Example patient for the T-CABS project"
* identifier[pid].system = "http://tcabs.example.org/patients"
* identifier[pid].value = "TCABS-PAT-001"
* name[name].family = "Mustermann"
* name[name].given = "Max"
* gender = #male
* birthDate = "1980-01-15"
* address[Strassenanschrift].line = "Musterstraße 123"
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].postalCode = "10115"
* address[Strassenanschrift].country = "DE"
* address[Strassenanschrift].use = #home
* address[Strassenanschrift].type = #both
* deceasedBoolean = false
* managingOrganization = Reference(Organization/CABS)
* generalPractitioner = Reference(Practitioner/tcabs-practitioner-example)