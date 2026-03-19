Profile: T_CABS_DeviceAlert_AtemfrequenzAlarm
Parent: T_CABS_DeviceAlert
Id: t-cabs-device-alert-atemfrequenz
Title: "T-CABS DeviceAlert Respiratory Rate Alarm"
Description: "Alert for respiratory rate exceeding alarm limits (high or low)."

* extension[alertCode].valueCodeableConcept from T_CABS_ValueSet_VentilationAlarmCode (required)
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-AtemfrequenzHoch-BREAS
InstanceOf: T_CABS_DeviceAlert_AtemfrequenzAlarm
Usage: #example
Title: "Example Respiratory Rate High Alert BREAS"
Description: "Respiratory rate exceeded upper alarm limit on BREAS ventilator"
* extension[alertStatus].valueCode = #completed
* extension[alertCode].valueCodeableConcept = $cs-ventilation-alarm#respiratory-rate-high "Respiratory Rate High"
* extension[alertPresence].valueBoolean = false
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T01:30:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T01:31:15+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium "Medium"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertDerivedFrom].valueReference = Reference(Observation/Example-Atemfrequenz-ResMed-gemessen)
* extension[alertLimit].valueRange.high.value = 30
* extension[alertLimit].valueRange.high.unit = "/min"
* extension[alertLimit].valueRange.high.system = $UCUM
* extension[alertLimit].valueRange.high.code = #/min
* extension[alertLabel].valueString = "RR HIGH"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* subject = Reference(Patient/tcabs-patient-example)
