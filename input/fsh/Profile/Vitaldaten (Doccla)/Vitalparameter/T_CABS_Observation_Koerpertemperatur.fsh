Profile: T_CABS_Observation_Koerpertemperatur
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-koerpertemperatur
Title: "T-CABS Observation Koerpertemperatur"
Description: "Profil für die Körpertemperatur"

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur"

* code.coding[LoincCoding] = $LOINC#8310-5 "Body temperature"
* code.coding[MDCType] = $IEEE-11073#150364

* valueQuantity.code = #Cel
* valueQuantity.unit = "°C"

* bodySite MS

Instance: Example-Koerpertemperatur-Doccla
InstanceOf: T_CABS_Observation_Koerpertemperatur
Usage: #example
Title: "Beispiel Körpertemperatur Messung"
Description: "Beispiel für eine Körpertemperatur-Messung über Doccla"
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