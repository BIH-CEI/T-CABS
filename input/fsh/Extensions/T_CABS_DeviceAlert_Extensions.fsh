// =============================================================================
// T-CABS DeviceAlert Extensions
// Backport of FHIR R6 DeviceAlert elements as R4 extensions on Basic
// =============================================================================

Extension: T_CABS_Ext_DeviceAlertStatus
Id: t-cabs-ext-device-alert-status
Title: "T-CABS DeviceAlert Status"
Description: "Status of the device alert (R6 DeviceAlert.status backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only code
* valueCode from T_CABS_ValueSet_DeviceAlertStatus (required)
* valueCode 1..1

Extension: T_CABS_Ext_DeviceAlertCode
Id: t-cabs-ext-device-alert-code
Title: "T-CABS DeviceAlert Code"
Description: "Code identifying the alert condition (R6 DeviceAlert.code backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

Extension: T_CABS_Ext_DeviceAlertPresence
Id: t-cabs-ext-device-alert-presence
Title: "T-CABS DeviceAlert Presence"
Description: "Whether the alert condition is currently present (R6 DeviceAlert.presence backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only boolean
* valueBoolean 1..1

Extension: T_CABS_Ext_DeviceAlertOccurrence
Id: t-cabs-ext-device-alert-occurrence
Title: "T-CABS DeviceAlert Occurrence"
Description: "Time period during which the alert condition was active (R6 DeviceAlert.occurrence[x] backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Period
* valuePeriod 1..1

Extension: T_CABS_Ext_DeviceAlertType
Id: t-cabs-ext-device-alert-type
Title: "T-CABS DeviceAlert Type"
Description: "Type of alert: physiological or technical (R6 DeviceAlert.type backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only CodeableConcept
* valueCodeableConcept from T_CABS_ValueSet_DeviceAlertType (required)
* valueCodeableConcept 1..1

Extension: T_CABS_Ext_DeviceAlertPriority
Id: t-cabs-ext-device-alert-priority
Title: "T-CABS DeviceAlert Priority"
Description: "Priority of the alert (R6 DeviceAlert.priority backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only CodeableConcept
* valueCodeableConcept from T_CABS_ValueSet_DeviceAlertPriority (required)
* valueCodeableConcept 1..1

Extension: T_CABS_Ext_DeviceAlertDevice
Id: t-cabs-ext-device-alert-device
Title: "T-CABS DeviceAlert Device"
Description: "The device or device metric that is the source of the alert (R6 DeviceAlert.source backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference(Device or DeviceMetric)
* valueReference 1..1

Extension: T_CABS_Ext_DeviceAlertDerivedFrom
Id: t-cabs-ext-device-alert-derived-from
Title: "T-CABS DeviceAlert DerivedFrom"
Description: "The value (Observation) that caused the alert condition, optionally with the triggering component and the exceeded limit (R6 DeviceAlert.derivedFrom BackboneElement backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* extension contains
    observation 1..1 and
    component 0..1 and
    limit 0..1
* extension[observation].value[x] only Reference(Observation)
* extension[observation].valueReference 1..1
* extension[component].value[x] only Coding
* extension[component].valueCoding 1..1
* extension[limit].value[x] only Range
* extension[limit].valueRange 1..1

Extension: T_CABS_Ext_DeviceAlertLabel
Id: t-cabs-ext-device-alert-label
Title: "T-CABS DeviceAlert Label"
Description: "Human-readable label for the alert as displayed on the device (R6 DeviceAlert.label backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only string
* valueString 1..1

Extension: T_CABS_Ext_DeviceAlertSignal
Id: t-cabs-ext-device-alert-signal
Title: "T-CABS DeviceAlert Signal"
Description: "Signal associated with the alert (audible, visual, etc.) (R6 DeviceAlert.signal backport)"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* extension contains
    activationState 1..1 and
    presence 0..1 and
    manifestation 0..1 and
    indication 0..1
* extension[activationState].value[x] only code
* extension[activationState].valueCode from T_CABS_ValueSet_DeviceAlertSignalActivation (required)
* extension[presence].value[x] only code
* extension[presence].valueCode from T_CABS_ValueSet_DeviceAlertSignalPresence (required)
* extension[manifestation].value[x] only CodeableConcept
* extension[manifestation].valueCodeableConcept from T_CABS_ValueSet_DeviceAlertSignalManifestation (required)
* extension[indication].value[x] only Period
