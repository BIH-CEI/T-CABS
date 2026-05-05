Profile: T_CABS_Observation_SPO2
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-spo2
Title: "T-CABS Observation SPO2 (Pulsoximetrie)"
Description: "Profile for oxygen saturation (SpO2) measured by pulse oximetry.
Note: This profile uses LOINC 2708-6 (FHIR Core oxygensat magic code) for interoperability
and distinguishes pulse oximetry via Observation.method (SNOMED 252465000).
Compatibility:
For the profile T_CABS_Observation_SPO2, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_SPO2 are also valid against the [ISiKSauerstoffsaettigungArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell)"

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell"

// FHIR Core oxygensat magic code
* code.coding = $LOINC#2708-6 //"Oxygen saturation in Arterial blood"

// Measurement method: Pulse oximetry
* method 1..1 MS
* method = $SCT#252465000 "Pulse oximetry"

* valueQuantity.code = #%
* valueQuantity.unit = "%"

Instance: Example-SPO2-Doccla
InstanceOf: T_CABS_Observation_SPO2
Usage: #example
Title: "Example Peripheral SPO2 Measurement (Pulse Oximetry)"
Description: "Example of a peripheral SpO2 measurement via Doccla pulse oximeter"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell|5.1.0"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $LOINC#2708-6 "Oxygen saturation in Arterial blood"
* method = $SCT#252465000 "Pulse oximetry"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T08:15:00Z"
* effectivePeriod.end = "2024-01-15T08:15:00Z"
* valueQuantity.value = 98
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-pulsoximeter)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
