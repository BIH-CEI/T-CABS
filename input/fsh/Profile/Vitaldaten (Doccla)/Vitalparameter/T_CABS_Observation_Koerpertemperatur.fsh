Profile: T_CABS_Observation_Koerpertemperatur
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-koerpertemperatur
Title: "T-CABS Observation Body Temperature"
Description: "Profile for body temperature.
Compatibility:
For the profile T_CABS_Observation_Koerpertemperatur, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Koerpertemperatur are also valid against the [ISiKKoerpertemperatur](https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur)."

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur"

* code.coding[LoincCoding] = $LOINC#8310-5 //"Body temperature"
* code.coding[MDCType] = $IEEE-11073#150364

* valueQuantity.code = #Cel
* valueQuantity.unit = "°C"

* bodySite MS

Instance: Example-Koerpertemperatur-Doccla
InstanceOf: T_CABS_Observation_Koerpertemperatur
Usage: #example
Title: "Example Body Temperature Measurement"
Description: "Example of a body temperature measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#8310-5 "Body temperature"
* code.coding[MDCType] = $IEEE-11073#150364
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T07:00:00Z"
* effectivePeriod.end = "2024-01-15T07:00:00Z"
* valueQuantity.value = 36.7
* valueQuantity.code = #Cel
* valueQuantity.unit = "°C"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)