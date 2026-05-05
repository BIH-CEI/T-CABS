Profile: T_CABS_Observation_BMI
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-bmi
Title: "T-CABS Observation BMI"
Description: "Profile for Body Mass Index (BMI)"

* code.coding = $LOINC#39156-5 //"Body mass index (BMI) [Ratio]"

* valueQuantity.code = #kg/m2
* valueQuantity.unit = "kg/m2"

Instance: Example-BMI-Doccla
InstanceOf: T_CABS_Observation_BMI
Usage: #example
Title: "Example BMI Measurement"
Description: "Example of a BMI measurement via Doccla"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T10:30:00Z"
* effectivePeriod.end = "2024-01-15T10:30:00Z"
* valueQuantity.value = 25.3
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-waage)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
