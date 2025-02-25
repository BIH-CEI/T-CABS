Profile: T_CABS_Device_Beatmungsgeraet
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Id: t-cabs-device-beatmungsgeraet
Title: "T-CABS Device Beatmungsgeraet"
Description: "Ein Beatmungsgeraet"

// Hersteller
* manufacturer 1..1 MS 

// Provider
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
* deviceName.type = #model-name (exactly)

* patient 1..1 MS
