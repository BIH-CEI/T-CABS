Profile: T_CABS_Observation_Vitalparameter
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation
Id: t-cabs-observation-vitalparameter
Title: "T-CABS Observation Vital Parameter"
Description: "Abstract profile for measured vital parameters"

* status MS

// Use existing discriminator from PhdBaseObservation (value:coding.code + value:coding.system)
* category contains VSCat 1..1 MS
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
// PHD-Observation category is already fixed to #phd by PhdBaseObservation

* code MS
* code.coding MS

// Wer hat die Messung vorgenommen? Patient / Practinioner?
* performer MS
* performer ^short = "Reference to the person who performed the measurement"

* subject 1..1 MS
* subject ^short = "Reference to the patient"
* subject only Reference(T_CABS_Patient)

// Messgerät
* device 1..1 MS
* device ^short = "Reference to the PHD measurement device"
* device only Reference(t-cabs-device-phd)

// Gatewaygerät
* extension.valueReference only Reference(T_CABS_Device_PHG)
* extension.valueReference ^short = "Reference to the PHG device"

* effective[x] 1..1 MS
