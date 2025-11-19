Profile: T_CABS_Observation_Atemfrequenz_beatmet
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-atemfrequenz-beatmet
Title: "T-CABS Observation Respiratory Rate Ventilated"
Description: "Profile for a respiratory rate of the ventilator"

* code.coding = $IEEE-11073#151586 //"MDC_VENT_RESP_RATE"

* valueQuantity.code = #/min
* valueQuantity.unit = "/min"

Instance: Example-Atemfrequenz-ResMed-gemessen
InstanceOf: T_CABS_Observation_Atemfrequenz_beatmet
Usage: #example
Title: "Example Respiratory Rate Measurement ResMed"
Description: "Example of a measured respiratory rate from a ResMed ventilator"
* status = #final
* code.coding = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:20:00Z"
* effectivePeriod.end = "2024-01-15T23:20:00Z"
* valueQuantity.value = 14
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-atemfrequenz)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)