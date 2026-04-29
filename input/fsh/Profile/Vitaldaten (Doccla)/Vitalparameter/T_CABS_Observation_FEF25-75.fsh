Profile: T_CABS_Observation_FEF25_75
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationfev1fef25-75
Title: "T-CABS Observation FEF25-75"
Description: "Profile for mean forced expiratory flow during exhalation of 25% to 75% of forced vital capacity (FVC)"

* code.coding = $LOINC#69971-0 //"FEF 25-75% Predicted"

* valueQuantity.code = #L/s
* valueQuantity.unit = "L/s"

Instance: Example-FEF25-75-Doccla
InstanceOf: T_CABS_Observation_FEF25_75
Usage: #example
Title: "Example FEF25-75% Measurement"
Description: "Example of a FEF25-75% measurement (Mean forced expiratory flow) via Doccla"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $LOINC#69971-0 "FEF 25-75% Predicted"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:20:00Z"
* effectivePeriod.end = "2024-01-15T09:20:00Z"
* valueQuantity.value = 4.1
* valueQuantity.code = #L/s
* valueQuantity.unit = "L/s"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-spirometer)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)