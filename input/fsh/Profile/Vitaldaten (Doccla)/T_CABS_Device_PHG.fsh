Profile: T_CABS_Device_PHG
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhgDevice
Id: t-cabs-device-phg
Title: "T-CABS Device PHG"
Description: "Profile for a tablet used as a gateway device"

* identifier[systemIdIdentifier].type.coding.system MS
* identifier[systemIdIdentifier].type.coding.code MS
* identifier[systemIdIdentifier].value MS

* serialNumber MS
* serialNumber ^short = "Serial number of the device"

* specialization MS

* patient 1..1 MS
* patient ^short = "Reference to the patient"
* patient only Reference(T_CABS_Patient)



Instance: beispiel-phg-doccla
InstanceOf: T_CABS_Device_PHG
Usage: #example
Title: "Example PHG Tablet"
Description: "Example of a Personal Health Gateway tablet from Doccla"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHG-DOCCLA-12345"
* type = $IEEE-11073#531981
* serialNumber = "PHG-SN-789012"
* deviceName.name = "Doccla Health Tablet"
* deviceName.type = #user-friendly-name
* manufacturer = "Doccla GmbH"
* modelNumber = "DHT-2024"
* version[MDCType].type = $IEEE-11073#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
* version[MDCType].value = "2.1.0"
// Supported PHD specializations
* specialization[MDCType][0].systemType = $IEEE-11073#528388 "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
* specialization[MDCType][+].systemType = $IEEE-11073#528399 "MDC_DEV_SPEC_PROFILE_SCALE"
* specialization[MDCType][+].systemType = $IEEE-11073#528426 "MDC_DEV_SPEC_PROFILE_HF_STRENGTH"
* specialization[MDCType][+].systemType = $IEEE-11073#528391 "MDC_DEV_SPEC_PROFILE_BP"
* specialization[MDCType][+].systemType = http://hl7.org/fhir/uv/phd/CodeSystem/MissingMDCCodes#528413 "MDC_DEV_SPEC_PROFILE_SPIROMETER"
* specialization[MDCType][+].systemType = $IEEE-11073#528484 "MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER"
* specialization[MDCType][+].systemType = $IEEE-11073#528405 "MDC_DEV_SPEC_PROFILE_PEFM"
* patient = Reference(Patient/tcabs-patient-example)
