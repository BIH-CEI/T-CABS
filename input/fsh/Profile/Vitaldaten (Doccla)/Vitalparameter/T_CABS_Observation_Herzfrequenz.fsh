Profile: T_CABS_Observation_Herzfrequenz
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-herzfrequenz
Title: "T-CABS Observation Herzfrequenz"
Description: "Profil für die Herzfrequenz"

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz"

* code.coding[LoincCoding] = $LOINC#8867-4 "Heart rate"
* code.coding[MDCType] = $IEEE-11073#147842 

* valueQuantity.code = #/min
* valueQuantity.unit = "/min"

Instance: Example-Herzfrequenz-Doccla
InstanceOf: T_CABS_Observation_Herzfrequenz
Usage: #example
Title: "Beispiel Herzfrequenz Messung"
Description: "Beispiel für eine Herzfrequenz-Messung über Doccla"
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
