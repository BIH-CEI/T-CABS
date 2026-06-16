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
* extension[alertStatus].valueCode = #in-progress
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#196648 "MDC_EVT_HI"
* extension[alertCode].valueCodeableConcept.coding[+] = $SCT#405495005 "High airway pressure"
* extension[alertPresence].valueBoolean = true
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T03:22:00+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#high "High"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-breas)
* extension[alertDerivedFrom].extension[observation].valueReference = Reference(Observation/Example-DruckMinMax-ResMed)
* extension[alertDerivedFrom].extension[limit].valueRange.high.value = 30
* extension[alertDerivedFrom].extension[limit].valueRange.high.unit = "cm[H2O]"
* extension[alertDerivedFrom].extension[limit].valueRange.high.system = $UCUM
* extension[alertDerivedFrom].extension[limit].valueRange.high.code = #cm[H2O]
* extension[alertLabel].valueString = "Pdruck HOCH"
* extension[alertSignal][0].extension[activationState].valueCode = #on
* extension[alertSignal][0].extension[presence].valueCode = #present
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* extension[alertSignal][+].extension[activationState].valueCode = #on
* extension[alertSignal][=].extension[presence].valueCode = #present
* extension[alertSignal][=].extension[manifestation].valueCodeableConcept = $cs-device-alert#visual "Visual"
* subject = Reference(Patient/tcabs-patient-example)
