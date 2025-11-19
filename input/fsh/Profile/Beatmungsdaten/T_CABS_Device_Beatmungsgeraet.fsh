Profile: T_CABS_Device_MDS_Beatmungsgeraet
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/MdsDevice
Id: t-cabs-device-mds-beatmungsgeraet
Title: "T-CABS Device MDS Home Ventilator"
Description: "Profile for a home ventilator device"

// Beatmungsstunden
* extension[operatingHours] 1..1

// identifier zur Gerätidentifizierung (alternativ Seriennummer)
* identifier.type = #UDI
* identifier ^definition = "Alternativer Identifier zur Seriennummer"

* type.coding = $IEEE-11073#70001 //"MDC_DEV_SYS_PT_VENT_MDS" 

// Hersteller
* manufacturer 1..1 MS
* manufacturer ^short = "Name of the device manufacturer"
* manufacturer ^definition = "Löwenstein Medical;
BREAS Medical; 
ResMed;
"
* serialNumber 1..1 MS
* serialNumber ^short = "Serial number of the device"

// Provider - Organization definieren?
* owner 1..1 MS
* owner ^short = "Reference to the provider of the device"
* owner ^comment = "Zum Beispiel: 
Jochum;
zuther + hautmann;
proVita arndt;
Löwenstein;
Vivisol;
Sapio Life;
"

* deviceName 1..
* deviceName.type = #model-name
* deviceName.name MS
* deviceName.name ^short = "Model name of the device"
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
* patient ^short = "Reference to the patient"
* patient only Reference(T_CABS_Patient)
// * contact
// * location


Instance: beispiel-beatmungsgeraet-breas
InstanceOf: T_CABS_Device_MDS_Beatmungsgeraet
Usage: #example
Title: "Example Ventilator BREAS"
Description: "Example of a BREAS home ventilator"
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
Title: "Example Ventilator Löwenstein"
Description: "Example of a Löwenstein home ventilator"
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
Title: "Example Ventilator ResMed"
Description: "Example of a ResMed home ventilator"
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