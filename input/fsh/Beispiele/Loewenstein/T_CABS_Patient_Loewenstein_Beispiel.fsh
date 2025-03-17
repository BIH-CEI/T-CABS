Instance: patient-123456
InstanceOf: $mii-person-patient
Usage: #example
Title: "Beispiel Patient Löwenstein (Patient)"
Description: "Ein Beispiel-Patient mit der internen ID 123456"

// externalId
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "http://www.example.com/identifiers/patient"
* identifier[pid].value = "4927221"

// id
* identifier.type = #PI
* identifier.system = "http://www.loewenstein.com/identifiers/patient"
* identifier.value = "123456"

// firstName
* name[name].given = "John"
// lastName
* name[name].family = "Doe"

// dateOfBirth
* birthDate = "1944-04-11"

