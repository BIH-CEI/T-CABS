Profile: T_CABS_DeviceAlert_MinutenvolumenAlarm
Parent: T_CABS_DeviceAlert_Limit
Id: t-cabs-device-alert-minutenvolumen
Title: "T-CABS DeviceAlert Minute Volume Alarm"
Description: "Alert for minute volume exceeding alarm limits (high or low)."

* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-MinutenvolumenNiedrig-Loewenstein
InstanceOf: T_CABS_DeviceAlert_MinutenvolumenAlarm
Usage: #example
Title: "Example Minute Volume Low Alert Löwenstein"
Description: "Minute volume fell below lower alarm limit on Löwenstein ventilator"
* extension[alertStatus].valueCode = #in-progress
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#196670 "MDC_EVT_LO"
* extension[alertPresence].valueBoolean = true
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T04:45:00+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium "Medium"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-loewenstein)
* extension[alertDerivedFrom].extension[observation].valueReference = Reference(Observation/Example-AMV-BREAS-gemessen)
* extension[alertDerivedFrom].extension[limit].valueRange.low.value = 4.0
* extension[alertDerivedFrom].extension[limit].valueRange.low.unit = "L/min"
* extension[alertDerivedFrom].extension[limit].valueRange.low.system = $UCUM
* extension[alertDerivedFrom].extension[limit].valueRange.low.code = #L/min
* extension[alertLabel].valueString = "MV LOW"
* extension[alertSignal][0].extension[activationState].valueCode = #on
* extension[alertSignal][0].extension[presence].valueCode = #present
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* subject = Reference(Patient/tcabs-patient-example)
