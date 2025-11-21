Profile: T_CABS_Observation_Herzfrequenz
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-herzfrequenz
Title: "T-CABS Observation Heart Rate"
Description: "Profile for heart rate.
Compatibility:
For the profile T_CABS_Observation_Herzfrequenz, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Herzfrequenz are also valid against the [ISiKHerzfrequenz](https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz)."

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz"

* code.coding[LoincCoding] = $LOINC#8867-4 //"Heart rate"
* code.coding[MDCType] = $IEEE-11073#147842 

* valueQuantity.code = #/min
* valueQuantity.unit = "/min"

Instance: Example-Herzfrequenz-Doccla
InstanceOf: T_CABS_Observation_Herzfrequenz
Usage: #example
Title: "Example Heart Rate Measurement"
Description: "Example of a heart rate measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#8867-4 "Heart rate"
* code.coding[MDCType] = $IEEE-11073#147842
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T08:45:00Z"
* effectivePeriod.end = "2024-01-15T08:45:00Z"
* valueQuantity.value = 72
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
