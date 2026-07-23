Profile: T_CABS_DeviceAlert_LeckageAlarm
Parent: T_CABS_DeviceAlert_Event
Id: t-cabs-device-alert-leakage
Title: "T-CABS DeviceAlert Leakage Alarm"
Description: "Alert for excessive circuit/mask leakage detected by the ventilator. Modelled as an event-based alarm because the device emits a specific leakage event code (MDC_EVT_LEAK_EXCESSIVE); the underlying threshold is device-internal."

* extension[alertCode].valueCodeableConcept = $IEEE-11073#198322 "MDC_EVT_LEAK_EXCESSIVE"
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-Leakage-ResMed
InstanceOf: T_CABS_DeviceAlert_LeckageAlarm
Usage: #example
Title: "Example Leakage Alert ResMed"
Description: "Excessive mask leakage detected on ResMed ventilator"
* extension[alertStatus].valueCode = #in-progress
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#198322 "MDC_EVT_LEAK_EXCESSIVE"
* extension[alertPresence].valueBoolean = true
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T03:45:00+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical "Technical"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium "Medium"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-resmed)
* extension[alertLabel].valueString = "LEAK HIGH"
* extension[alertSignal][0].extension[activationState].valueCode = #on
* extension[alertSignal][0].extension[presence].valueCode = #on
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* subject = Reference(Patient/tcabs-patient-example)
