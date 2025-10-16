Profile: T_CABS_Observation_Vitalparameter
Parent: http://hl7.org/fhir/uv/phd/StructureDefinition/PhdNumericObservation
Id: t-cabs-observation-vitalparameter
Title: "T-CABS Observation Vitalparamter"
Description: "Abstraktes Profil für die gemessenen Vitalparameter von Doccla"

* status MS
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation


* code MS

// Wer hat die Messung vorgenommen? Patient / Practinioner?
* performer MS

* subject 1..1 MS
* subject ^short = "Referenz auf den Patienten"
* subject only Reference(T_CABS_Patient)

// Messgerät
* device 1..1 MS
* device only Reference(t-cabs-device-phd)

// Gatewaygerät
//* extension contains http://hl7.org/fhir/StructureDefinition/observation-gatewayDevice named gatewayDevice 0..1 MS
//* extension[gatewayDevice].valueReference only Reference(T_CABS_Device_PHG)

* effective[x] 1..1 MS
