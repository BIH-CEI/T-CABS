Profile: T_CABS_Device_Messgeraet
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Id: t-cabs-device-messgeraet
Title: "T-CABS Device Messgerät"
Description: "Profil für ein Messgerät am Patienten"

// Wage, Pulsoxymeter etc.

// identifier zur Gerätidentifizierung (alternativ Seriennummer)
* identifier.type = #UDI
* identifier ^definition = "Alternativer Identifier zur Seriennummer"


// * type = VS der verschiedenen Messgeräte

* serialNumber 1..1 MS
* serialNumber ^short = "Seriennummer des Gerätes"

* patient 1..1 MS
* patient ^short = "Referenz auf den Patienten"