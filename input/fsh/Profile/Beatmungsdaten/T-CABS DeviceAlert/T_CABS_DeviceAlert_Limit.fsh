Profile: T_CABS_DeviceAlert_Limit
Parent: T_CABS_DeviceAlert
Id: t-cabs-device-alert-limit
Title: "T-CABS DeviceAlert Limit Alarm"
Description: "Abstract profile for limit-exceedance alarms (Limit-event pattern): a measured value crosses a configured alarm threshold. The alert carries a generic direction marker (MDC_EVT_HI / MDC_EVT_LO) from the ventilation limit-exceedance value set plus a mandatory alertDerivedFrom reference to the Observation that crossed the limit. Priority is assigned by the device per occurrence (severity of the exceedance) and is therefore not fixed at the profile level. Concrete profiles add the alarm type and detecting device."

* ^abstract = true
* extension[alertCode].valueCodeableConcept from T_CABS_ValueSet_VentilationLimitExceedanceCode (required)
* extension[alertDerivedFrom] 1..* MS
* obeys tcabs-limit-direction

Invariant: tcabs-limit-direction
Description: "A high-limit alarm (MDC_EVT_HI) must carry an upper limit (derivedFrom.limit.high); a low-limit alarm (MDC_EVT_LO) must carry a lower limit (derivedFrom.limit.low)."
Severity: #error
Expression: "(extension('https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-code').value.ofType(CodeableConcept).coding.where(code='196648').exists() implies extension('https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-derived-from').extension('limit').value.ofType(Range).high.exists()) and (extension('https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-code').value.ofType(CodeableConcept).coding.where(code='196670').exists() implies extension('https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-ext-device-alert-derived-from').extension('limit').value.ofType(Range).low.exists())"
