Instance: patient-123456
InstanceOf: $mii-person-patient
Usage: #example
Title: "123456"
Description: "Patient mit der internen ID 123456"

// externalId
* identifier[pid].type.coding.code = #MR
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

