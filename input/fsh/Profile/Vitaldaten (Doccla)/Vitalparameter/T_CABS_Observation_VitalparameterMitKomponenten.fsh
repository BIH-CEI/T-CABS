Profile: T_CABS_Observation_VitalparameterMitKomponenten
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdCompoundNumericObservation
Id: t-cabs-observation-vitalparametermitkomponenten
Title: "T-CABS Observation Vital Parameter with Components"
Description: "Abstract profile for measured vital parameters with multiple values"

* status MS

// Use existing discriminator from PhdBaseObservation (value:coding.code + value:coding.system)
* category contains VSCat 1..1 MS
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
// PHD-Observation category is already fixed to #phd by PhdBaseObservation

* code MS
* code.coding 1..* MS

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
