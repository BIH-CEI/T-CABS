Profile: T_CABS_Observation_PEEP
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-peep
Title: "T-CABS Observation PEEP"
Description: "Profile for Positive End-Expiratory Pressure (PEEP)"

* code.coding = $IEEE-11073#152720 //"MDC_VENT_PRESS_AWAY_DELTA"

* valueQuantity.code = #mbar
* valueQuantity.unit = "mbar"


Instance: Example-PEEP-Loewenstein
InstanceOf: T_CABS_Observation_PEEP
Usage: #example
Title: "Example PEEP Löwenstein"
Description: "Example of PEEP from a Löwenstein ventilator"
* status = #final
* code.coding = $IEEE-11073#152720 "MDC_VENT_PRESS_AWAY_DELTA"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:35:00Z"
* effectivePeriod.end = "2024-01-15T23:35:00Z"
* valueQuantity.value = 18
* valueQuantity.code = #mbar
* valueQuantity.unit = "mbar"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-loewenstein-peep)
* partOf = Reference(Procedure/beispiel-beatmung-loewenstein)