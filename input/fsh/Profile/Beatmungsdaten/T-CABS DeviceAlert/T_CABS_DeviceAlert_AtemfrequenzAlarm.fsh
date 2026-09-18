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
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T23:20:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T23:23:00+01:00"
* extension[alertIdentifier].valueIdentifier.system = "https://bih-cei.github.io/T-CABS/sid/device-alert-id"
* extension[alertIdentifier].valueIdentifier.value = "atemfrequenz-001"
* extension[alertProcedure].valueReference = Reference(Procedure/beispiel-beatmung-breas)
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium "Medium"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertDerivedFrom].extension[observation].valueReference = Reference(Observation/Example-Atemfrequenz-BREAS-gemessen)
* extension[alertDerivedFrom].extension[limit].valueRange.high.value = 30
* extension[alertDerivedFrom].extension[limit].valueRange.high.unit = "/min"
* extension[alertDerivedFrom].extension[limit].valueRange.high.system = $UCUM
* extension[alertDerivedFrom].extension[limit].valueRange.high.code = #/min
* extension[alertLabel].valueString = "RR HIGH"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* subject = Reference(Patient/tcabs-patient-example)
