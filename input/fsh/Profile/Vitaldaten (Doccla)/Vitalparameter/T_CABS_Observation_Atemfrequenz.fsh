Profile: T_CABS_Observation_Atemfrequenz
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-atemfrequenz
Title: "T-CABS Observation Respiratory Rate"
Description: "Profile for respiratory rate.
Compatibility:
For the profile T_CABS_Observation_Atemfrequenz, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Atemfrequenz are also valid against the [ISiKAtemfrequenz](https://gematik.de/fhir/isik/v3/VitalparameterUndKoerpermasze/StructureDefinition/ISiKAtemfrequenz)."

// Kompatibel zu "https://gematik.de/fhir/isik/v3/VitalparameterUndKoerpermasze/StructureDefinition/ISiKAtemfrequenz"
* code.coding[LoincCoding] = $LOINC#9279-1 //"Respiratory Rate"
* code.coding[MDCType] = $IEEE-11073#152490

* valueQuantity.code = #/min
* valueQuantity.unit = "/min"

Instance: Example-Atemfrequenz-Doccla
InstanceOf: T_CABS_Observation_Atemfrequenz
Usage: #example
Title: "Example Respiratory Rate Measurement"
Description: "Example of a respiratory rate measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKAtemfrequenz"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#9279-1 "Respiratory Rate"
* code.coding[MDCType] = $IEEE-11073#152490
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T08:30:00Z"
* effectivePeriod.end = "2024-01-15T08:30:00Z"
* valueQuantity.value = 16
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
