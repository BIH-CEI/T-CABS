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

* specialization[MDCType].systemType ^short = "Type of measurement device"
* specialization[MDCType].systemType from t-cabs-valueset-phdtyp (required)

* patient 1..1 MS
* patient ^short = "Reference to the patient"
* patient only Reference(T_CABS_Patient)


Instance: beispiel-phd-pulsoximeter
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Pulse Oximeter"
Description: "Example of a Personal Health Device pulse oximeter from Doccla"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-PULSOXIM-001"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "MASIMO-PO-345678"
* deviceName.name = "Pulsoximeter"
* deviceName.type = #user-friendly-name
* manufacturer = "Masimo"
* modelNumber = "Radical-7"
* specialization[MDCType].systemType = $IEEE-11073#528388 "MDC_DEV_SPEC_PROFILE_PULS_OXIM"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)

Instance: beispiel-phd-waage
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Scale"
Description: "Example of a Personal Health Device scale for weight measurement"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-SCALE-002"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "BEURER-SC-789012"
* deviceName.name = "Körperwaage"
* deviceName.type = #user-friendly-name
* manufacturer = "Beurer"
* modelNumber = "BF 700"
* specialization[MDCType].systemType = $IEEE-11073#528399 "MDC_DEV_SPEC_PROFILE_SCALE"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)

Instance: beispiel-phd-dynamometer
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Hand Dynamometer"
Description: "Example of a Personal Health Device dynamometer for hand grip strength measurement"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-DYNO-003"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "JAMAR-HG-456789"
* deviceName.name = "Handdynamometer"
* deviceName.type = #user-friendly-name
* manufacturer = "JAMAR"
* modelNumber = "5030J1"
* specialization[MDCType].systemType = $IEEE-11073#528426 "MDC_DEV_SPEC_PROFILE_HF_STRENGTH"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)

Instance: beispiel-phd-blutdruckmessgeraet
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Blood Pressure Monitor"
Description: "Example of a Personal Health Device blood pressure monitor (sphygmomanometer)"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-BP-004"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "OMRON-BP-234567"
* deviceName.name = "Blutdruckmessgerät"
* deviceName.type = #user-friendly-name
* manufacturer = "OMRON"
* modelNumber = "M7 Intelli IT"
* specialization[MDCType].systemType = $IEEE-11073#528391 "MDC_DEV_SPEC_PROFILE_BP"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)

Instance: beispiel-phd-spirometer
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Spirometer"
Description: "Example of a Personal Health Device spirometer for lung function measurement"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-SPIRO-005"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "CAREFUS-SP-567890"
* deviceName.name = "Spirometer"
* deviceName.type = #user-friendly-name
* manufacturer = "CareFusion"
* modelNumber = "SpiroUSB"
* specialization[MDCType].systemType = http://hl7.org/fhir/uv/phd/CodeSystem/MissingMDCCodes#528413 "MDC_DEV_SPEC_PROFILE_SPIROMETER"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)

Instance: beispiel-phd-schrittzaehler
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Step Counter"
Description: "Example of a Personal Health Device step counter for activity measurement"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-STEP-006"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "FITBIT-ST-678901"
* deviceName.name = "Schrittzähler"
* deviceName.type = #user-friendly-name
* manufacturer = "Fitbit"
* modelNumber = "Charge 5"
* specialization[MDCType].systemType = $IEEE-11073#528484 "MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)

Instance: beispiel-phd-peakflow
InstanceOf: T_CABS_Device_PHD
Usage: #example
Title: "Example PHD Peak Flow Meter"
Description: "Example of a Personal Health Device peak flow meter for respiratory measurement"
* identifier[systemIdIdentifier].type.coding.system = $ContinuaDeviceIdentifier
* identifier[systemIdIdentifier].type.coding.code = #SYSID
* identifier[systemIdIdentifier].value = "PHD-PEAK-007"
* type = $IEEE-11073#65573 "MDC_MOC_VMS_MDS_SIMP"
* serialNumber = "CLEMENT-PF-789012"
* deviceName.name = "Peak Flow Meter"
* deviceName.type = #user-friendly-name
* manufacturer = "Clement Clarke"
* modelNumber = "Mini-Wright"
* specialization[MDCType].systemType = $IEEE-11073#528405 "MDC_DEV_SPEC_PROFILE_PEFM"
* specialization[MDCType].version = "1.0"
* version[MDCType].type = $IEEE-11073#531976 "MDC_ID_PROD_SPEC_FW"
* version[MDCType].value = "1.0.0"
* patient = Reference(Patient/tcabs-patient-example)
* owner = Reference(Organization/beispiel-provider-doccla)
