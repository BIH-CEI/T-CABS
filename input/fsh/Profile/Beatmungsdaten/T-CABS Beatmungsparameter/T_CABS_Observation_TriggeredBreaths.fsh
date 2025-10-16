Profile: T_CABS_Observation_TriggeredBreaths
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-triggeredbreaths
Title: "T-CABS Observation TriggeredBreaths"
Description: "Profil für die Prozentzahl der selbstständig getriggerten Atemzüge innerhalb eines Zeitraums"

* code.coding = $IEEE-11073#152498 "MDC_VENT_RESP_BTSD_P_RATE" // Includes unassisted breaths
//* code.coding = $IEEE-11073#152538 "MDC_VENT_RESP_BTSD_PS_RATE" // Includes unassisted and supported breaths

* effective[x] only Period

* valueQuantity.code = #%
* valueQuantity.unit = "%"


Instance: Example-TriggeredBreaths-Loewenstein
InstanceOf: T_CABS_Observation_TriggeredBreaths
Usage: #example
Title: "Beispiel TriggeredBreaths Löwenstein"
Description: "Beispiel für getriggerte Atemzüge von einem Löwenstein Beatmungsgerät"
* status = #final
* code.coding = $IEEE-11073#152498 "MDC_VENT_RESP_BTSD_P_RATE"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T22:00:00Z"
* effectivePeriod.end = "2024-01-16T06:00:00Z"
* valueQuantity.value = 92
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-loewenstein-triggeredbreaths)
* partOf = Reference(Procedure/beispiel-beatmung-loewenstein)