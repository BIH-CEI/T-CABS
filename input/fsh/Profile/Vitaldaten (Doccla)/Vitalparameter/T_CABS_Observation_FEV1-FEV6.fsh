Profile: T_CABS_Observation_FEV1_FEV6
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationfev1fev6
Title: "T-CABS Observation FEV1/FEV6"
Description: "Profile for FEV1/FEV6 ratio"

* code.coding = $LOINC#65658-7 //"FEV1/FEV6 Predicted"

* valueQuantity.code = #%
* valueQuantity.unit = "%"

Instance: Example-FEV1-FEV6-Doccla
InstanceOf: T_CABS_Observation_FEV1_FEV6
Usage: #example
Title: "Example FEV1/FEV6 Ratio Measurement"
Description: "Example of a FEV1/FEV6 ratio measurement via Doccla"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $LOINC#65658-7 "FEV1/FEV6 Predicted"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:25:00Z"
* effectivePeriod.end = "2024-01-15T09:25:00Z"
* valueQuantity.value = 78
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-spirometer)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)