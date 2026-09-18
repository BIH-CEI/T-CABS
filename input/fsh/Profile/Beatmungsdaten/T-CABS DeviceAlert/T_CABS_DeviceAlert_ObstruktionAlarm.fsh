Profile: T_CABS_DeviceAlert_ObstruktionAlarm
Parent: T_CABS_DeviceAlert_Event
Id: t-cabs-device-alert-obstruction
Title: "T-CABS DeviceAlert Obstruction Alarm"
Description: "Alert for obstructive apnea of the patient detected by the ventilator. No IEEE 11073 or SNOMED CT event code available — uses T-CABS custom code. IEEE 11073 codes the duration of obstructive apnea as a measurement (MDC_TIME_PD_APNEA_OBSTRUC) but has no matching Partition 3 event."

* extension[alertCode].valueCodeableConcept = $cs-ventilation-alarm#obstructive-apnea "Obstructive Apnea Alarm"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-Obstruction-BREAS
InstanceOf: T_CABS_DeviceAlert_ObstruktionAlarm
Usage: #example
Title: "Example Obstruction Alert BREAS"
Description: "Obstructive apnea detected on BREAS ventilator"
* extension[alertStatus].valueCode = #completed
* extension[alertCode].valueCodeableConcept.coding[0] = $cs-ventilation-alarm#obstructive-apnea "Obstructive Apnea Alarm"
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T04:10:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T04:10:25+01:00"
* extension[alertIdentifier].valueIdentifier.system = "https://bih-cei.github.io/T-CABS/sid/device-alert-id"
* extension[alertIdentifier].valueIdentifier.value = "obstruktion-001"
* extension[alertProcedure].valueReference = Reference(Procedure/beispiel-beatmung-breas)
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertLabel].valueString = "OBSTRUCTION"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* subject = Reference(Patient/tcabs-patient-example)
