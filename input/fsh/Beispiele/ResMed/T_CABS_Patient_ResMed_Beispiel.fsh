Instance: patient-44187887-a48d-4f4e-9393-e4207045a2c4
InstanceOf: $mii-person-patient
Usage: #example
Title: "Beispiel Patient ResMed (Patient)"
Description: "Patient mit der internen ID 44187887-a48d-4f4e-9393-e4207045a2c4"

// externalId
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "http://www.example.com/identifiers/patient"
* identifier[pid].value = "123456"

// ecn
* identifier.type = #PI
* identifier.system = "http://www.resmed.com/identifiers/patient"
* identifier.value = "44187887-a48d-4f4e-9393-e4207045a2c4"

//physician
* generalPractitioner.display = "c501e66d-bcd0-4d99-b745-0970e65d55dd"

// firstName
* name[name].given = "John"
// lastName
* name[name].family = "Doe"

// dob
* birthDate = "1944-04-11"

// location (only string, better a reference)
* managingOrganization.display = "DIGI Medical AZ"
