Profile: T_CABS_Device_MDS_Beatmungsgeraet
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/MdsDevice
Id: t-cabs-device-mds-beatmungsgeraet
Title: "T-CABS Device MDS Heimbeatmungsgerät"
Description: "Profil für ein Heimbeatmungsgerät"

// Beatmungsstunden
* extension[operatingHours] 1..1

// identifier zur Gerätidentifizierung (alternativ Seriennummer)
* identifier.type = #UDI
* identifier ^definition = "Alternativer Identifier zur Seriennummer"

* type.coding = $IEEE-11073#70001 "MDC_DEV_SYS_PT_VENT_MDS" 

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
* patient only Reference(T_CABS_Patient)
// * contact
// * location


Instance: beispiel-beatmungsgeraet-breas
InstanceOf: T_CABS_Device_MDS_Beatmungsgeraet
Usage: #example
Title: "Beispiel Beatmungsgerät BREAS"
Description: "Beispiel für ein BREAS Heimbeatmungsgerät"
* extension[operatingHours].valueUnsignedInt = 8760
* identifier.type = #UDI
* identifier.value = "BREAS-VIVO45-12345"
* type.coding = $IEEE-11073#70001 "MDC_DEV_SYS_PT_VENT_MDS"
* manufacturer = "BREAS Medical"
* serialNumber = "VIVO45-SN-789012"
* owner = Reference(Organization/beispiel-provider-jochum)
* deviceName.type = #model-name
* deviceName.name = "Vivo45"
* patient = Reference(Patient/tcabs-patient-example)

Instance: beispiel-beatmungsgeraet-loewenstein
InstanceOf: T_CABS_Device_MDS_Beatmungsgeraet
Usage: #example
Title: "Beispiel Beatmungsgerät Löwenstein"
Description: "Beispiel für ein Löwenstein Heimbeatmungsgerät"
* extension[operatingHours].valueUnsignedInt = 12450
* identifier.type = #UDI
* identifier.value = "LOEW-PRISMA30-67890"
* type.coding = $IEEE-11073#70001 "MDC_DEV_SYS_PT_VENT_MDS"
* manufacturer = "Löwenstein Medical"
* serialNumber = "PRISMA30-SN-345678"
* owner = Reference(Organization/beispiel-provider-loewenstein)
* deviceName.type = #model-name
* deviceName.name = "Prisma VENT30"
* patient = Reference(Patient/tcabs-patient-example)

Instance: beispiel-beatmungsgeraet-resmed
InstanceOf: T_CABS_Device_MDS_Beatmungsgeraet
Usage: #example
Title: "Beispiel Beatmungsgerät ResMed"
Description: "Beispiel für ein ResMed Heimbeatmungsgerät"
* extension[operatingHours].valueUnsignedInt = 6500
* identifier.type = #UDI
* identifier.value = "RESMED-STELLAR150-54321"
* type.coding = $IEEE-11073#70001 "MDC_DEV_SYS_PT_VENT_MDS"
* manufacturer = "ResMed"
* serialNumber = "STELLAR150-SN-901234"
* owner = Reference(Organization/beispiel-provider-vivisol)
* deviceName.type = #model-name
* deviceName.name = "Stellar150"
* patient = Reference(Patient/tcabs-patient-example)