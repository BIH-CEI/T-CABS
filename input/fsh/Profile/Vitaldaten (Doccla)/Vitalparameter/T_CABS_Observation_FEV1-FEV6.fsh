Profile: T_CABS_Observation_FEV1_FEV6
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationfev1fev6
Title: "T-CABS Observation FEV1/FEV6"
Description: "Profile for FEV1/FEV6 ratio"

* code.coding[LoincCoding] = $LOINC#65658-7 //"FEV1/FEV6 Predicted"
* code.coding[MDCType] = $IEEE-11073#188936 //"MDC_RATIO_AWAY_EXP_FORCED_FEV1_FEV6"

* valueQuantity.code = #%
* valueQuantity.unit = "%"

Instance: Example-FEV1-FEV6-Doccla
InstanceOf: T_CABS_Observation_FEV1_FEV6
Usage: #example
Title: "Example FEV1/FEV6 Ratio Measurement"
Description: "Example of a FEV1/FEV6 ratio measurement via Doccla"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#65658-7 "FEV1/FEV6 Predicted"
* code.coding[MDCType] = $IEEE-11073#188936
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:25:00Z"
* effectivePeriod.end = "2024-01-15T09:25:00Z"
* valueQuantity.value = 78
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)