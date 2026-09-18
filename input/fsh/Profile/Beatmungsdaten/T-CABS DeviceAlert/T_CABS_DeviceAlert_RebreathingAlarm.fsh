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
* extension[alertStatus].valueCode = #completed
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T05:10:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T05:12:00+01:00"
* extension[alertIdentifier].valueIdentifier.system = "https://bih-cei.github.io/T-CABS/sid/device-alert-id"
* extension[alertIdentifier].valueIdentifier.value = "rebreathing-001"
* extension[alertProcedure].valueReference = Reference(Procedure/beispiel-beatmung-breas)
* extension[alertType].valueCodeableConcept = $cs-device-alert#technical "Technical"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertLabel].valueString = "REBREATHING"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* extension[alertSignal][+].extension[activationState].valueCode = #off
* extension[alertSignal][=].extension[manifestation].valueCodeableConcept = $cs-device-alert#visual "Visual"
* subject = Reference(Patient/tcabs-patient-example)
