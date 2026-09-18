Profile: T_CABS_DeviceAlert_DruckAlarm
Parent: T_CABS_DeviceAlert_Limit
Id: t-cabs-device-alert-druck
Title: "T-CABS DeviceAlert Pressure Alarm"
Description: "Alert for ventilation airway pressure exceeding alarm limits (high or low)."

* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-DruckHoch-BREAS
InstanceOf: T_CABS_DeviceAlert_DruckAlarm
Usage: #example
Title: "Example Pressure High Alert BREAS"
Description: "Airway pressure exceeded upper alarm limit on BREAS ventilator"
* extension[alertStatus].valueCode = #completed
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#196648 "MDC_EVT_HI"
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T03:22:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T03:22:40+01:00"
* extension[alertIdentifier].valueIdentifier.system = "https://bih-cei.github.io/T-CABS/sid/device-alert-id"
* extension[alertIdentifier].valueIdentifier.value = "druck-001"
* extension[alertProcedure].valueReference = Reference(Procedure/beispiel-beatmung-breas)
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertDerivedFrom].extension[observation].valueReference = Reference(Observation/Example-DruckMinMax-ResMed)
* extension[alertDerivedFrom].extension[limit].valueRange.high.value = 30
* extension[alertDerivedFrom].extension[limit].valueRange.high.unit = "cm[H2O]"
* extension[alertDerivedFrom].extension[limit].valueRange.high.system = $UCUM
* extension[alertDerivedFrom].extension[limit].valueRange.high.code = #cm[H2O]
* extension[alertLabel].valueString = "Pdruck HOCH"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#auditory "Auditory"
* extension[alertSignal][+].extension[activationState].valueCode = #off
* extension[alertSignal][=].extension[manifestation].valueCodeableConcept = $cs-device-alert#visual "Visual"
* subject = Reference(Patient/tcabs-patient-example)