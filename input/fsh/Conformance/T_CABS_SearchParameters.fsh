Instance: t-cabs-sp-observation-device-serial
InstanceOf: SearchParameter
Usage: #definition
Title: "T-CABS SearchParameter: Observation by Device Serial Number"
Description: "Search for Observations by the serial number of the device (via DeviceMetric identifier)"
* url = "https://bih-cei.github.io/T-CABS/SearchParameter/t-cabs-sp-observation-device-serial"
* status = #active
* code = #device-serial
* name = "TCABSObservationDeviceSerial"
* base = #Observation
* type = #token
* expression = "Observation.device.identifier"
* multipleOr = true
* multipleAnd = true

Instance: t-cabs-sp-procedure-ventilation-mode
InstanceOf: SearchParameter
Usage: #definition
Title: "T-CABS SearchParameter: Procedure by Ventilation Mode"
Description: "Search for ventilation Procedures by their ventilation mode (IEEE 11073 code)"
* url = "https://bih-cei.github.io/T-CABS/SearchParameter/t-cabs-sp-procedure-ventilation-mode"
* status = #active
* code = #ventilation-mode
* name = "TCABSProcedureVentilationMode"
* base = #Procedure
* type = #token
* expression = "Procedure.code.coding"
* multipleOr = true
* multipleAnd = true

Instance: t-cabs-sp-procedure-ventilation-form
InstanceOf: SearchParameter
Usage: #definition
Title: "T-CABS SearchParameter: Procedure by Ventilation Form"
Description: "Search for ventilation Procedures by their ventilation form (invasive / non-invasive)"
* url = "https://bih-cei.github.io/T-CABS/SearchParameter/t-cabs-sp-procedure-ventilation-form"
* status = #active
* code = #ventilation-form
* name = "TCABSProcedureVentilationForm"
* base = #Procedure
* type = #token
* expression = "Procedure.category.coding"
* multipleOr = true
* multipleAnd = true

Instance: t-cabs-sp-alert-type
InstanceOf: SearchParameter
Usage: #definition
Title: "T-CABS SearchParameter: DeviceAlert by Alert Type"
Description: "Search for DeviceAlerts by their type (physiological or technical)"
* url = "https://bih-cei.github.io/T-CABS/SearchParameter/t-cabs-sp-alert-type"
* status = #active
* code = #alert-type
* name = "TCABSAlertType"
* base = #Basic
* type = #token
* expression = "Basic.extension.where(url='https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-type').value.as(CodeableConcept)"
* multipleOr = true

Instance: t-cabs-sp-alert-priority
InstanceOf: SearchParameter
Usage: #definition
Title: "T-CABS SearchParameter: DeviceAlert by Priority"
Description: "Search for DeviceAlerts by their priority (high, medium, low)"
* url = "https://bih-cei.github.io/T-CABS/SearchParameter/t-cabs-sp-alert-priority"
* status = #active
* code = #alert-priority
* name = "TCABSAlertPriority"
* base = #Basic
* type = #token
* expression = "Basic.extension.where(url='https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-priority').value.as(CodeableConcept)"
* multipleOr = true

Instance: t-cabs-sp-alert-code
InstanceOf: SearchParameter
Usage: #definition
Title: "T-CABS SearchParameter: DeviceAlert by Alarm Code"
Description: "Search for DeviceAlerts by their alarm code (IEEE 11073 or SNOMED CT)"
* url = "https://bih-cei.github.io/T-CABS/SearchParameter/t-cabs-sp-alert-code"
* status = #active
* code = #alert-code
* name = "TCABSAlertCode"
* base = #Basic
* type = #token
* expression = "Basic.extension.where(url='https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-code').value.as(CodeableConcept)"
* multipleOr = true
