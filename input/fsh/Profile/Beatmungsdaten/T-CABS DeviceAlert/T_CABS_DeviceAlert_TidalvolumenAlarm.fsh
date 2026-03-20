Profile: T_CABS_DeviceAlert_TidalvolumenAlarm
Parent: T_CABS_DeviceAlert
Id: t-cabs-device-alert-tidalvolumen
Title: "T-CABS DeviceAlert Tidal Volume Alarm"
Description: "Alert for tidal volume exceeding alarm limits (high or low)."

* extension[alertCode].valueCodeableConcept from T_CABS_ValueSet_VentilationAlarmCode (required)
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium
* extension[alertDevice].valueReference only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: Example-DeviceAlert-TidalvolumenHoch-ResMed
InstanceOf: T_CABS_DeviceAlert_TidalvolumenAlarm
Usage: #example
Title: "Example Tidal Volume High Alert ResMed"
Description: "Tidal volume exceeded upper alarm limit on ResMed ventilator"
* extension[alertStatus].valueCode = #completed
* extension[alertCode].valueCodeableConcept.coding[0] = $IEEE-11073#151869 "MDC_VOL_AWAY_TIDAL_MAX"
* extension[alertCode].valueCodeableConcept.coding[+] = $SCT#13621006 "Tidal volume (observable entity)"
* extension[alertPresence].valueBoolean = false
* extension[alertOccurrence].valuePeriod.start = "2024-01-15T02:10:00+01:00"
* extension[alertOccurrence].valuePeriod.end = "2024-01-15T02:12:30+01:00"
* extension[alertType].valueCodeableConcept = $cs-device-alert#physiological "Physiological"
* extension[alertPriority].valueCodeableConcept = $cs-device-alert#medium "Medium"
* extension[alertDevice].valueReference = Reference(Device/beispiel-beatmungsgeraet-resmed)
* extension[alertLimit].valueRange.high.value = 800
* extension[alertLimit].valueRange.high.unit = "mL"
* extension[alertLimit].valueRange.high.system = $UCUM
* extension[alertLimit].valueRange.high.code = #mL
* extension[alertLabel].valueString = "Vt HIGH"
* extension[alertSignal][0].extension[activationState].valueCode = #off
* extension[alertSignal][0].extension[manifestation].valueCodeableConcept = $cs-device-alert#audible "Audible"
* subject = Reference(Patient/tcabs-patient-example)
