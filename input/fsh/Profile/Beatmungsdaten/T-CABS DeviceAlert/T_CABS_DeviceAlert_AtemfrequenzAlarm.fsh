Profile: T_CABS_DeviceAlert_AtemfrequenzAlarm
Parent: T_CABS_DeviceAlert_Limit
Id: t-cabs-device-alert-atemfrequenz
Title: "T-CABS DeviceAlert Respiratory Rate Alarm"
Description: "Alert for respiratory rate exceeding alarm limits (high or low)."

* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)


Instance: Example-DeviceAlert-AtemfrequenzHoch-BREAS
InstanceOf: T_CABS_DeviceAlert_AtemfrequenzAlarm
Usage: #example
Title: "Example Respiratory Rate High Alert BREAS"
Description: "Respiratory rate exceeded upper alarm limit on BREAS ventilator"
* extension[alertStatus].valueCode = #completed
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#196648 "MDC_EVT_HI"
* extension[alertPresence].valueBoolean = false
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T01:30:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T01:31:15+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium "Medium"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertDerivedFrom].extension[observation].valueReference = Reference(Observation/Example-Atemfrequenz-ResMed-gemessen)
* extension[alertDerivedFrom].extension[limit].valueRange.high.value = 30
* extension[alertDerivedFrom].extension[limit].valueRange.high.unit = "/min"
* extension[alertDerivedFrom].extension[limit].valueRange.high.system = $UCUM
* extension[alertDerivedFrom].extension[limit].valueRange.high.code = #/min
* extension[alertLabel].valueString = "RR HIGH"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* subject = Reference(Patient/tcabs-patient-example)
