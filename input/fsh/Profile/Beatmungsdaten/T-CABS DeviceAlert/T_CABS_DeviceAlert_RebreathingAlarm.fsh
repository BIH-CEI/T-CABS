Profile: T_CABS_DeviceAlert_RebreathingAlarm
Parent: T_CABS_DeviceAlert_Event
Id: t-cabs-device-alert-rebreathing
Title: "T-CABS DeviceAlert Rebreathing Alarm"
Description: "Alert for rebreathing of exhaled gas detected (elevated CO2 in inspired gas). No IEEE 11073 or SNOMED CT code available — uses T-CABS custom code."

* extension[alertCode].valueCodeableConcept = $cs-ventilation-alarm#rebreathing "Rebreathing Alarm"
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-Rebreathing-BREAS
InstanceOf: T_CABS_DeviceAlert_RebreathingAlarm
Usage: #example
Title: "Example Rebreathing Alert BREAS"
Description: "Rebreathing detected on BREAS ventilator - elevated CO2 in inspired gas"
* extension[alertStatus].valueCode = #in-progress
* extension[alertPresence].valueBoolean = true
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T05:10:00+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical "Technical"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertLabel].valueString = "REBREATHING"
* extension[alertSignal][0].extension[activationState].valueCode = #on
* extension[alertSignal][0].extension[presence].valueCode = #present
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* extension[alertSignal][+].extension[activationState].valueCode = #on
* extension[alertSignal][=].extension[presence].valueCode = #present
* extension[alertSignal][=].extension[manifestation].valueCodeableConcept = $cs-device-alert#visual "Visual"
* subject = Reference(Patient/tcabs-patient-example)
