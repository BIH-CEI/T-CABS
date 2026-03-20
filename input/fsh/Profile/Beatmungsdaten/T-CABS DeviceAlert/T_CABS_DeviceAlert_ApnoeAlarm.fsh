Profile: T_CABS_DeviceAlert_ApnoeAlarm
Parent: T_CABS_DeviceAlert
Id: t-cabs-device-alert-apnoe
Title: "T-CABS DeviceAlert Apnea Alarm"
Description: "Alert for detected apnea (no respiratory effort within the apnea alarm time)."

* extension[alertCode].valueCodeableConcept from T_CABS_ValueSet_VentilationAlarmCode (required)
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-Apnoe-ResMed
InstanceOf: T_CABS_DeviceAlert_ApnoeAlarm
Usage: #example
Title: "Example Apnea Alert ResMed"
Description: "Apnea detected on ResMed ventilator - no respiratory effort for 20 seconds"
* extension[alertStatus].valueCode = #in-progress
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#198134 "MDC_EVT_VENT_APNEA"
* extension[alertCode].valueCodeableConcept.coding[+] = $SCT#59127000 "Apnea alarm (situation)"
* extension[alertPresence].valueBoolean = true
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T03:45:00+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-resmed)
* extension[alertLabel].valueString = "APNEA"
* extension[alertSignal][0].extension[activationState].valueCode = #on
* extension[alertSignal][0].extension[presence].valueCode = #present
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* extension[alertSignal][+].extension[activationState].valueCode = #on
* extension[alertSignal][=].extension[presence].valueCode = #present
* extension[alertSignal][=].extension[manifestation].valueCodeableConcept = $cs-device-alert#visual "Visual"
* subject = Reference(Patient/tcabs-patient-example)
