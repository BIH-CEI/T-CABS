Profile: T_CABS_Observation_Atemfrequenz_beatmet
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-atemfrequenz-beatmet
Title: "T-CABS Observation Respiratory Rate Ventilated"
Description: "Profile for a respiratory rate of the ventilator"

* code.coding = $IEEE-11073#151586 //"MDC_VENT_RESP_RATE"
* code.coding ^definition = "Rate of mechanical ventilation; method not specified."

* valueQuantity.code = #/min
* valueQuantity.unit = "/min"

Instance: Example-Atemfrequenz-ResMed-gemessen
InstanceOf: T_CABS_Observation_Atemfrequenz_beatmet
Usage: #example
Title: "Example Respiratory Rate Measurement ResMed"
Description: "Example of a measured respiratory rate from a ResMed ventilator"
* status = #final
* code.coding = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:20:00Z"
* effectivePeriod.end = "2024-01-15T23:20:00Z"
* valueQuantity.value = 14
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-atemfrequenz)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)

// -----------------------------------------------------------------------------
// Coherent BREAS example: a measured respiratory rate (elevated, 32/min) that
// triggers the high-limit alarm, plus the set (backup) respiratory rate (12/min).
// Both point via Observation.device to their DeviceMetric; the measurement and the
// setting metric are linked on the DeviceMetric level (relation, kind = PS).
// -----------------------------------------------------------------------------
Instance: Example-Atemfrequenz-BREAS-gemessen
InstanceOf: T_CABS_Observation_Atemfrequenz_beatmet
Usage: #example
Title: "Example Respiratory Rate BREAS (measured, elevated)"
Description: "Measured respiratory rate of 32/min on a BREAS ventilator — above the configured high alarm limit (30/min), and therefore the value the high-limit alarm is derived from."
* status = #final
* code.coding = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:20:00Z"
* effectivePeriod.end = "2024-01-15T23:20:00Z"
* valueQuantity.value = 32
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-atemfrequenz)
* partOf = Reference(Procedure/beispiel-beatmung-breas)

Instance: Example-Atemfrequenz-BREAS-Setting
InstanceOf: T_CABS_Observation_Atemfrequenz_beatmet
Usage: #example
Title: "Example Respiratory Rate BREAS (set backup rate)"
Description: "Set (backup) respiratory rate of 12/min on a BREAS ventilator. Modeled with the same IEEE 11073 code as the measurement but distinguished as a device setting via Observation.device -> DeviceMetric with category = setting."
* status = #final
* code.coding = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:20:00Z"
* effectivePeriod.end = "2024-01-15T23:20:00Z"
* valueQuantity.value = 12
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
// Configured alarm limits for respiratory rate (min/max that trigger the alarm);
// the high limit (30) is the threshold the measured value (32) crossed.
* referenceRange.low.value = 8
* referenceRange.low.unit = "/min"
* referenceRange.low.system = $UCUM
* referenceRange.low.code = #/min
* referenceRange.high.value = 30
* referenceRange.high.unit = "/min"
* referenceRange.high.system = $UCUM
* referenceRange.high.code = #/min
* referenceRange.type = $cs-referenceRangeMeaning#therapeutic
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-atemfrequenz-set)
* partOf = Reference(Procedure/beispiel-beatmung-breas)