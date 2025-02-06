Instance: device-1234
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Usage: #example
Title: "Device_Beispiel_Loewenstein"
Description: "Ein Beispiel für ein zugeordnetes Beatmungsgerät von dem Hersteller Loewenstein"
// deviceId
* identifier.system = "http://www.loewenstein_example.com/identifiers/devices"
* identifier.value = "1234"

//isActive
* status = #active

// deviceType
* deviceName[+].name = "prisma SOFT"
* deviceName[=].type = #model-name

//fwVersion
* version.value = "v1.2.3"

// deviceSn
* serialNumber = "ABC5678DE"

// patientUuid
* patient = Reference(patient-123456)

* type = $SCT#714692006 "Variable pressure jet ventilation device (physical object)"

