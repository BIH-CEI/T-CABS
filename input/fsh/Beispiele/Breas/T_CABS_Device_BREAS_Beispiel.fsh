Instance: device-1573
InstanceOf: t-cabs-device-beatmungsgeraet
Usage: #example
Title: "Beispiel Beatmungsgerät Breas (Device)"
Description: "Ein Beispiel für ein zugeordnetes Beatmungsgerät von dem Hersteller BREAS"
// deviceId
* identifier.system = "http://www.breas_example.com/identifiers/devices"
* identifier.value = "1573"
//isActive
* status = #active
// deviceModelName
* deviceName[+].name = "Vivo65"
* deviceName[=].type = #model-name
// serialNumber
* serialNumber = "U120006"
// patientUuid
* patient = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* manufacturer = "BREAS Medical"

* owner.display = "Jochum"