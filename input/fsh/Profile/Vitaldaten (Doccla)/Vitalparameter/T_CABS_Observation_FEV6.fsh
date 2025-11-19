Profile: T_CABS_Observation_FEV6
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationfev6
Title: "T-CABS Observation FEV6"
Description: "Profile for Forced Expiratory Volume in 6 Seconds (FEV6)"

* code.coding[LoincCoding] = $LOINC#65655-3	 //"FEV6"
* code.coding[MDCType] = $IEEE-11073#189064 //"MDC_RATIO_AWAY_EXP_FORCED_6S_FVC"

* valueQuantity.code = #L
* valueQuantity.unit = "L"

Instance: Example-FEV6-Doccla
InstanceOf: T_CABS_Observation_FEV6
Usage: #example
Title: "Example FEV6 Measurement"
Description: "Example of a FEV6 measurement (Forced Expiratory Volume in 6 Seconds) via Doccla"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#65655-3 "FEV6"
* code.coding[MDCType] = $IEEE-11073#189064
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:15:00Z"
* effectivePeriod.end = "2024-01-15T09:15:00Z"
* valueQuantity.value = 3.2
* valueQuantity.code = #L
* valueQuantity.unit = "L"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)