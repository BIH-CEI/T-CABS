Profile: T_CABS_Device_Beatmungsgeraet
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/icu-device
Id: t-cabs-device-beatmungsgeraet
Title: "T-CABS Device Beatmungsgerät"
Description: "Profil für ein Beatmungsgerät"

// identifier zur Gerätidentifizierung (alternativ Seriennummer)
* identifier.type = #UDI
* identifier ^definition = "Alternativer Identifier zur Seriennummer"

// 426160001(Oxygen ventilator (physical object)) oder 23562009(Household ventilator, device (physical object))?
* type = $SCT#706172005 "Ventilator (physical object)" 

// Hersteller
* manufacturer 1..1 MS
* manufacturer ^short = "Name des Gerätehersteller"
* manufacturer ^definition = "Löwenstein Medical;
BREAS Medical; 
ResMed;
"
* serialNumber 1..1 MS
* serialNumber ^short = "Seriennummer des Gerätes"

// Provider - Organization definieren?
* owner 1..1 MS
* owner ^short = "Referenz auf den Provider des Gerätes"
* owner ^comment = "Zum Beispiel: 
Jochum;
zuther + hautmann;
proVita arndt;
Löwenstein;
Vivisol;
Sapio Life;
"

* deviceName.type = #model-name
* deviceName.name ^short = "Modellname des Gerätes"
* deviceName.name ^definition = "Luisa;
Prisma VENT30;
Prisma VENT40;
Prisma VENT50/50-C;
Vivo3;
Vivo45;
Vivo45LS;
Vivo50;
Vivo55;
Vivo65;
Lumis150;
Stellar100;
Stellar130;
Stellar150;
Astral100;
Astral150"

* patient 1..1 MS
* patient ^short = "Referenz auf den Patienten"
// * contact    
// * location
