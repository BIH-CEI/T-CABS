Profile: T_CABS_Device_PHD
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Id: t-cabs-device-phd
Title: "T-CABS Device PHD"
Description: "Profil für ein Messgerät am Patienten"

* identifier[systemIdIdentifier].type.coding.system MS
* identifier[systemIdIdentifier].type.coding.code MS
* identifier[systemIdIdentifier].value MS

* serialNumber 0..1 MS
* serialNumber ^short = "Seriennummer des Geraetes"
* specialization.systemType.coding[MDCType] ^short = "Art des Messgerätes"
* specialization.systemType.coding[MDCType] ^definition = "528388 MDC_DEV_SPEC_PROFILE_PULS_OXIM - Pulsoximeter
528399 MDC_DEV_SPEC_PROFILE_SCALE - Waage
528426 MDC_DEV_SPEC_PROFILE_HF_STRENGTH - Handstärkemesser
528391 MDC_DEV_SPEC_PROFILE_BP - Sphygmomanometer
69680 MDC_DEV_ANALY_AWAY_MULTI_PARAM - Spirometer
528484 MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER - Schrittzähler
528405	MDC_DEV_SPEC_PROFILE_BCA - Peak Flow Meter
"

* patient 1..1 MS
* patient ^short = "Referenz auf den Patienten"
* patient only Reference(T_CABS_Patient)

Instance: beispiel-phd-doccla
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Beispiel PHD Messgerät"
Description: "Beispiel für ein Personal Health Device Messgerät von Doccla"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-DOCCLA-67890"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "PHD-SN-345678"
* deviceName.name = "Doccla Pulsoximeter"
* deviceName.type = #user-friendly-name
* manufacturer = "Doccla GmbH"
* modelNumber = "DPO-2024" 
* specialization.systemType.coding[MDCType] = $IEEE-11073#528388 "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
* specialization.version = "1.0"
* patient = Reference(Patient/tcabs-patient-example)