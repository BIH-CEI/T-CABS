Instance: device-12547854521
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Usage: #example
Title: "Device_Beispiel_ResMed"
Description: "Ein Beispiel für ein zugeordnetes Beatmungsgerät von dem Hersteller ResMed"
// deviceId
* identifier.system = "http://www.resmed_example.com/identifiers/devices"
* identifier.value = "12345"
//isActive
* status = #active
// deviceModelName
* deviceName[+].name = "Stellar"
* deviceName[=].type = #model-name
// serialNo
* serialNumber = "12547854521"
// patientUuid
* patient = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* type = $SCT#714692006 "Variable pressure jet ventilation device (physical object)"
