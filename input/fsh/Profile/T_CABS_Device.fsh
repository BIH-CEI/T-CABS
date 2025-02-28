Profile: T_CABS_Device_Beatmungsgeraet
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Id: t-cabs-device-beatmungsgeraet
Title: "T-CABS Device Beatmungsgeraet"
Description: "Ein Beatmungsgeraet"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains serialNumber 1..1 MS
* identifier[serialNumber].type = http://terminology.hl7.org/CodeSystem/v2-0203#SNO
* identifier[serialNumber].use = #official

// 426160001(Oxygen ventilator (physical object)) oder 23562009(Household ventilator, device (physical object))?
* type = $SCT#706172005 "Ventilator (physical object)" 

// Hersteller
* manufacturer 1..1 MS 

// Provider - Organization definieren?
// * owner 1..1 MS 

// Modellname in deviceName.name
/*
Luisa
Prisma VENT30
Prisma VENT40
Prisma VENT50/50-C
Vivo3
Vivo45
Vivo45LS
Vivo50
Vivo55
Vivo65
Lumis150
Stellar100
Stellar130
Stellar150
Astral100
Astral150
*/
* deviceName.type = #model-name
// * deviceName.name from T_CABS_VS_Modellnamen (preferred) pattern?

* patient 1..1 MS

// * contact
// * location
