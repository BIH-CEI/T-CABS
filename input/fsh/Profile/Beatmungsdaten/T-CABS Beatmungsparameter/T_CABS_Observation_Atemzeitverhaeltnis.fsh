Profile: T_CABS_Observation_Atemzeitverhaeltnis
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-atemzeitverhaeltnis
Title: "T-CABS Observation Respiratory Time Ratio"
Description: "Profile for respiratory time ratio"

* code.coding = $IEEE-11073#151832 //"MDC_RATIO_IE"
* code.coding ^definition = "Ratio of inspiratory time to expiratory time (I:E ratio)."

* valueQuantity.code = #%
* valueQuantity.unit = "%"


Instance: Example-Atemzeitverhaeltnis-ResMed
InstanceOf: T_CABS_Observation_Atemzeitverhaeltnis
Usage: #example
Title: "Example Respiratory Time Ratio ResMed"
Description: "Example of respiratory time ratio from a ResMed ventilator"
* status = #final
* code.coding = $IEEE-11073#151832 "MDC_RATIO_IE"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T22:30:00+02:00"
* effectivePeriod.end = "2024-10-07T22:45:00+02:00"
* valueQuantity.value = 33
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-atemzeit)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)
