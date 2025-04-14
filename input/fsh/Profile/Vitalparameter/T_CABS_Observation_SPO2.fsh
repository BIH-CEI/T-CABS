Profile: T_CABS_Observation_SPO2
Parent: https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell
Id: t-cabs-observation-spo2
Title: "T-CABS Observation SPO2"
Description: "Profil für die Sauerstoffsaettigung im Blut (SPO2)"
/*
* code.coding[loinc] from $vs-mii-icu-code-monitoring-und-vitaldaten-loinc (required)
* code.coding[loinc] = $LOINC#2708-6 "Oxygen saturation in Arterial blood by Pulse oximetry"
*/

* effectivePeriod.start 1..1 MS
* effectivePeriod.end 1..1 MS

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* bodySite 1..1 MS
* bodySite.coding 1..* MS
* bodySite.coding.system 1..1 MS
* bodySite.coding.code = #11527006 (exactly)
* bodySite.coding.display = "Arterial system structure (body structure)"



Instance: Example-TCABS-Observation-SPO2
InstanceOf: T_CABS_Observation_SPO2
Usage: #example
* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs

* code.coding[snomed].system = "http://snomed.info/sct"
* code.coding[snomed].code = #442476006
* code.coding[snomed].display = "Arterial oxygen saturation (observable entity)"
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #2708-6
* code.coding[loinc].display = "Oxygen saturation in Arterial blood"
* code.coding[IEEE11073].system = "urn:iso:std:iso:11073:10101"
* code.coding[IEEE11073].code = #150324
* code.coding[loinc-zusatzcode].system = "http://loinc.org"
* code.coding[loinc-zusatzcode].code = #59408-5

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* effectivePeriod.start = "2019-12-23T08:30:10Z"
* effectivePeriod.end = "2019-12-23T09:30:10Z"

* valueQuantity.value = 98
* valueQuantity.unit = "percent"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #11527006
* bodySite.coding.display = "Arterial system structure (body structure)"