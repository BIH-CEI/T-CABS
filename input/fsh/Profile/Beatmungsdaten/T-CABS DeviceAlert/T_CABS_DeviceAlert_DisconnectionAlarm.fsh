Profile: T_CABS_DeviceAlert_DisconnectionAlarm
Parent: T_CABS_DeviceAlert_Event
Id: t-cabs-device-alert-disconnection
Title: "T-CABS DeviceAlert Disconnection Alarm"
Description: "Alert for patient circuit disconnection detected by the ventilator."

* extension[alertCode].valueCodeableConcept = $IEEE-11073#197172 "MDC_EVT_VENT_DISCONN"
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-Disconnection-Loewenstein
InstanceOf: T_CABS_DeviceAlert_DisconnectionAlarm
Usage: #example
Title: "Example Disconnection Alert Löwenstein"
Description: "Patient circuit disconnection detected on Löwenstein ventilator"
* extension[alertStatus].valueCode = #completed
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#197172 "MDC_EVT_VENT_DISCONN"
* extension[alertCode].valueCodeableConcept.coding[+] = $SCT#416260008 "Ventilator disconnection alarm"
* extension[alertPresence].valueBoolean = false
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T02:00:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T02:00:45+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical "Technical"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-loewenstein)
* extension[alertLabel].valueString = "DISCONNECT"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* subject = Reference(Patient/tcabs-patient-example)
