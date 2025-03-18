Instance: device-1234
InstanceOf: t-cabs-device-beatmungsgeraet
Usage: #example
Title: "Beispiel Beatmungsgerät Löwenstein (Device)"
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

* manufacturer = "Löwenstein Medical"

* owner.display = "Löwenstein"