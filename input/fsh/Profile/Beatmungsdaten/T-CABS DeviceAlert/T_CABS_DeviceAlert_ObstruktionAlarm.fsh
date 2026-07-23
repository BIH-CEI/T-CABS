Profile: T_CABS_DeviceAlert_ObstruktionAlarm
Parent: T_CABS_DeviceAlert_Event
Id: t-cabs-device-alert-obstruction
Title: "T-CABS DeviceAlert Obstruction Alarm"
Description: "Alert for airway/circuit flow obstruction detected by the ventilator."

* extension[alertCode].valueCodeableConcept = $IEEE-11073#197184 "MDC_EVT_FLOW_OBSTRUC"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-Obstruction-BREAS
InstanceOf: T_CABS_DeviceAlert_ObstruktionAlarm
Usage: #example
Title: "Example Obstruction Alert BREAS"
Description: "Flow obstruction detected on BREAS ventilator"
* extension[alertStatus].valueCode = #in-progress
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#197184 "MDC_EVT_FLOW_OBSTRUC"
* extension[alertPresence].valueBoolean = true
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T04:10:00+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertLabel].valueString = "OBSTRUCTION"
* extension[alertSignal][0].extension[activationState].valueCode = #on
* extension[alertSignal][0].extension[presence].valueCode = #on
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* subject = Reference(Patient/tcabs-patient-example)
