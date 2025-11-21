Profile: T_CABS_Device_PHD
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice
Id: t-cabs-device-phd
Title: "T-CABS Device PHD"
Description: "Profile for a personal health device measuring at the patient"

* identifier[systemIdIdentifier].type.coding.system MS
* identifier[systemIdIdentifier].type.coding.code MS
* identifier[systemIdIdentifier].value MS

* serialNumber MS
* serialNumber ^short = "Serial number of the device"
* specialization.systemType.coding[MDCType] ^short = "Type of measurement device"
* specialization.systemType.coding[MDCType] from t-cabs-valueset-phdtyp (required)

* patient 1..1 MS
* patient ^short = "Reference to the patient"
* patient only Reference(T_CABS_Patient)

Instance: beispiel-phd-doccla
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Measurement Device"
Description: "Example of a Personal Health Device measurement device from Doccla"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-DOCCLA-67890"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "PHD-SN-345678"
* deviceName.name = "Pulsoximeter"
* deviceName.type = #user-friendly-name
* manufacturer = "Masimo"
* modelNumber = "DPO-2024" 
* specialization.systemType.coding[MDCType] = $IEEE-11073#528388 "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
* specialization.version = "1.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)