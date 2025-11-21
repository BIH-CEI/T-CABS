Profile: T_CABS_Device_PHG
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhgDevice
Id: t-cabs-device-phg
Title: "T-CABS Device PHG"
Description: "Profile for a tablet used as a gateway device"

* identifier[systemIdIdentifier].type.coding.system MS
* identifier[systemIdIdentifier].type.coding.code MS
* identifier[systemIdIdentifier].value MS

// Tablet
* specialization 1..1 MS
* specialization.systemType.coding[MDCType] = $IEEE-11073#8528192 //"MDC_AI_APPLIANCE_TABLETPC"

* serialNumber MS
* serialNumber ^short = "Serial number of the device"

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
* version.type.coding[MDCType] = $IEEE-11073#532352 "MDC_REG_CERT_DATA_CONTINUA_VERSION"
* version.value = "2.1.0"
* specialization.systemType.coding[MDCType] = $IEEE-11073#8528192 "MDC_AI_APPLIANCE_TABLETPC"
* patient = Reference(Patient/tcabs-patient-example)

* property[codedListProperties].type.coding = $IEEE-11073#532353
// Pulsoximeter
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#528388
// ....
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#528399
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#69876
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#528391
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#69680
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#528484
* property[codedListProperties].valueCode[+].coding = $IEEE-11073#528405