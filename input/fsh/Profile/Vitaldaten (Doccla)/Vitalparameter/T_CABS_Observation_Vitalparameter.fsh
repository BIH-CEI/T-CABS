Profile: T_CABS_Observation_Vitalparameter
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation
Id: t-cabs-observation-vitalparameter
Title: "T-CABS Observation Vital Parameter"
Description: "Abstract profile for measured vital parameters"

* status MS

* category[VSCat] 1..1 MS
* category[VSCat].coding 1..1 MS
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation


* code MS
* code.coding[LoincCoding] MS
* code.coding[MDCType] MS

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
