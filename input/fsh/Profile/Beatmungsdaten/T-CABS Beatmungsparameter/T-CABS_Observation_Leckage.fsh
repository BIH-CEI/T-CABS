Profile: T_CABS_Observation_Leckage
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-leckage
Title: "T-CABS Observation Leakage"
Description: "Profile for leakage rate during ventilation"

* code.coding = $IEEE-11073#152432 //"MDC_VENT_VOL_LEAK"

* effective[x] only Period

* valueQuantity.code = #L/min
* valueQuantity.unit = "L/min"

Instance: Example-Leckage-ResMed
InstanceOf: T_CABS_Observation_Leckage
Usage: #example
Title: "Example Leakage ResMed"
Description: "Example of leakage measurement from a ResMed ventilator"
* status = #final
* code.coding = $IEEE-11073#152432 "MDC_VENT_VOL_LEAK"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T22:00:00Z"
* effectivePeriod.end = "2024-01-16T06:00:00Z"
* valueQuantity.value = 0.6
* valueQuantity.code = #L/min
* valueQuantity.unit = "L/min"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-leckage)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)