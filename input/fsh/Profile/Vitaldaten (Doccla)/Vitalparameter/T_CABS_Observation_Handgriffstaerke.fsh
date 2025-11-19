Profile: T_CABS_Observation_Handgriffstaerke
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationhandgriffstaerke
Title: "T-CABS Observation Hand Grip Strength"
Description: "Profile for hand grip strength"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    SnomedCoding 0..1 MS

* code.coding[SnomedCoding].system = $SCT
* code.coding[SnomedCoding].code = #251433001
//* code.coding[SnomedCoding].display = "Grip strength (observable entity)"

* code.coding[MDCType].code = #8455547
//* code.coding[MDCType].display = "MDC_HF_GRIP_CLOSE"

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
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[SnomedCoding] = $SCT#251433001 "Grip strength (observable entity)"
* code.coding[MDCType] = $IEEE-11073#8455547
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:30:00Z"
* effectivePeriod.end = "2024-01-15T09:30:00Z"
* valueQuantity.value = 42
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* bodySite = $SCT#85562004 "Hand structure (body structure)"
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)