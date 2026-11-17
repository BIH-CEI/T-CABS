Profile: T_CABS_Observation_TriggeredBreaths
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-triggeredbreaths
Title: "T-CABS Observation Triggered Breaths"
Description: "Profile for the percentage of spontaneously triggered breaths within a time period"

* code.coding = $cs-ventilation-parameter#spont-breath-percent
* code.coding ^definition = "Proportion of patient-triggered breaths within a measurement period, expressed as a percentage. All three manufacturers report this as a percentage (BREAS % Spont, Löwenstein and ResMed in their session statistics)."

* effective[x] only Period

* valueQuantity.code = #%
* valueQuantity.unit = "%"


Instance: Example-TriggeredBreaths-Loewenstein
InstanceOf: T_CABS_Observation_TriggeredBreaths
Usage: #example
Title: "Example Triggered Breaths Löwenstein"
Description: "Example of triggered breaths from a Löwenstein ventilator"
* status = #final
* code.coding = $cs-ventilation-parameter#spont-breath-percent "Spontaneous Breath Percentage"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T22:00:00Z"
* effectivePeriod.end = "2024-01-16T06:00:00Z"
* valueQuantity.value = 92
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-loewenstein-triggeredbreaths)
* partOf = Reference(Procedure/beispiel-beatmung-loewenstein)