Instance: patient-98219fce-813a-41f2-94ff-861d59b89715
InstanceOf: $mii-person-patient
Usage: #example
Title: "98219fce-813a-41f2-94ff-861d59b89715"
Description: "Patient mit der UUID 98219fce-813a-41f2-94ff-861d59b89715"

// medicalRecordNumber
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "http://www.example.com/identifiers/patient"
* identifier[pid].value = "4927221"

// patientUuid
* identifier.type = #PI
* identifier.system = "http://www.breas.com/identifiers/patient"
* identifier.value = "98219fce-813a-41f2-94ff-861d59b89715"

// firstName
* name[name].given = "PatFN-1496"
// lastName
* name[name].family = "PatLN-1496"

// dateOfBirth
* birthDate = "1950-02-17"

// status active = true ; inactive = false
* active = true