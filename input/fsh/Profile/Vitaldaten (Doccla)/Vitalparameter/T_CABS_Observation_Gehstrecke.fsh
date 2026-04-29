Profile: T_CABS_Observation_TaeglicheSchrittzahl
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-taegliche-schrittzahl
Title: "T-CABS Observation Daily Step Count"
Description: "Profile for daily step count (number of steps in 24 hours)."

* code.coding = $LOINC#41950-7 //"Number of steps in 24 hour Measured"

// Taegliche Schrittzahl
* valueQuantity.code = #{#}/(24.h)
* valueQuantity.unit = "{#}/(24.h)"

Instance: Example-TaeglicheSchrittzahl-Doccla
InstanceOf: T_CABS_Observation_TaeglicheSchrittzahl
Usage: #example
Title: "Example Daily Step Count Measurement"
Description: "Example of a daily step count measurement via Doccla activity tracker"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $LOINC#41950-7 "Number of steps in 24 hour Measured"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:59:00Z"
* effectivePeriod.end = "2024-01-15T23:59:00Z"
* valueQuantity.value = 8520
* valueQuantity.code = #{#}/(24.h)
* valueQuantity.unit = "{#}/(24.h)"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-schrittzaehler)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
