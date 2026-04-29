Profile: T_CABS_Observation_Handgriffstaerke
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationhandgriffstaerke
Title: "T-CABS Observation Hand Grip Strength"
Description: "Profile for hand grip strength"

* code.coding.system = $SCT
* code.coding.code = #251433001
//* code.coding[SnomedCoding].display = "Grip strength (observable entity)"


* valueQuantity.code = #kg
* valueQuantity.unit = "kg"

* bodySite 1..1 MS 
* bodySite = $SCT#85562004 //"Hand structure (body structure)"

Instance: Example-Handgriffstaerke-Doccla
InstanceOf: T_CABS_Observation_Handgriffstaerke
Usage: #example
Title: "Example Hand Grip Strength Measurement"
Description: "Example of a hand grip strength measurement via Doccla"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $SCT#251433001 "Grip strength (observable entity)"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:30:00Z"
* effectivePeriod.end = "2024-01-15T09:30:00Z"
* valueQuantity.value = 42
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* bodySite = $SCT#85562004 "Hand structure (body structure)"
* device = Reference(Device/beispiel-phd-dynamometer)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)