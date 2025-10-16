Profile: T_CABS_Observation_FEV1
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observationfev1
Title: "T-CABS Observation FEV1"
Description: "Profil für das forcierte exspiratorische Volumen in einer Sekunde (FEV1)"

* code.coding[LoincCoding] = $LOINC#20150-9 "FEV1"
* code.coding[MDCType] = $IEEE-11073#152586

* valueQuantity.code = #L
* valueQuantity.unit = "L"

Instance: Example-FEV1-Doccla
InstanceOf: T_CABS_Observation_FEV1
Usage: #example
Title: "Beispiel FEV1 Messung"
Description: "Beispiel für eine FEV1-Messung über Doccla"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#20150-9 "FEV1"
* code.coding[MDCType] = $IEEE-11073#152586
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:15:00Z"
* effectivePeriod.end = "2024-01-15T09:15:00Z"
* valueQuantity.value = 2.8
* valueQuantity.code = #L
* valueQuantity.unit = "L"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)