Profile: T_CABS_Observation_Koerpergewicht
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-koerpergewicht
Title: "T-CABS Observation Body Weight"
Description: "Profile for body weight.
Compatibility:
For the profile T_CABS_Observation_Koerpergewicht, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Koerpergewicht are also valid against the [ISiKKoerpergewicht](https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht)."

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht"

* code.coding[LoincCoding] = $LOINC#29463-7 //"Body weight"
* code.coding[MDCType] = $IEEE-11073#188800 

* valueQuantity.code = #kg
* valueQuantity.unit = "kg"

Instance: Example-Koerpergewicht-Doccla
InstanceOf: T_CABS_Observation_Koerpergewicht
Usage: #example
Title: "Example Body Weight Measurement"
Description: "Example of a body weight measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#29463-7 "Body weight"
* code.coding[MDCType] = $IEEE-11073#188800
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T07:30:00Z"
* effectivePeriod.end = "2024-01-15T07:30:00Z"
* valueQuantity.value = 75.8
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
