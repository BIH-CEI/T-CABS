Profile: T_CABS_Observation_ArterielleSPO2
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-arteriellespo2
Title: "T-CABS Observation SPO2"
Description: "Profile for arterial oxygen saturation (SPO2)
Compatibility:
For the profile T_CABS_Observation_ArterielleSPO2, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArterielleSPO2 are also valid against the [ISiKSauerstoffsaettigungArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell)"

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell"

* code.coding[LoincCoding] = $LOINC#2708-6
* code.coding[MDCType] = $IEEE-11073#160300

* valueQuantity.code = #%
* valueQuantity.unit = "%"

* bodySite 1..1 MS
* bodySite.coding 1..* MS
* bodySite.coding = $SCT#11527006 "Arterial system structure (body structure)"

Instance: Example-ArterielleSPO2-Doccla
InstanceOf: T_CABS_Observation_ArterielleSPO2
Usage: #example
Title: "Example Arterial SPO2 Measurement"
Description: "Example of an arterial SPO2 measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#2708-6 
* code.coding[MDCType] = $IEEE-11073#160300
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T08:15:00Z"
* effectivePeriod.end = "2024-01-15T08:15:00Z"
* valueQuantity.value = 98
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* bodySite.coding = $SCT#11527006 "Arterial system structure (body structure)"
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
