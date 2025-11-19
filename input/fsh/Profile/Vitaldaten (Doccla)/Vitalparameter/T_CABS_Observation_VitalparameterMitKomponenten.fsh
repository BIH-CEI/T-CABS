Profile: T_CABS_Observation_VitalparameterMitKomponenten
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdCompoundNumericObservation
Id: t-cabs-observation-vitalparametermitkomponenten
Title: "T-CABS Observation Vital Parameter with Components"
Description: "Abstract profile for measured vital parameters with multiple values"

* status MS

* category[VSCat] 1..1 MS
* category[VSCat].coding 1..1 MS
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation

* code MS
* code.coding[LoincCoding] 1..1 MS

// Wer hat die Messung vorgenommen? Patient / Practinioner?
* performer MS

* value[x] 0..0

* subject 1..1 MS
* subject ^short = "Reference to the patient"
* subject only Reference(T_CABS_Patient)

// Messgerät
* device 1..1 MS
* device only Reference(t-cabs-device-phd)

// Gatewaygerät
* extension.valueReference only Reference(T_CABS_Device_PHG)

* effective[x] 1..1 MS
