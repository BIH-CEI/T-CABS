Profile: T_CABS_Observation_Beatmungsparameter
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/NumericObservation
Id: t-cabs-observation-beatmungsparameter
Title: "T-CABS Observation Beatmungsparameter (abstract)"
Description: "Abstraktes Profil für Beatmungsparameter"

* code.coding MS

* effective[x] 1..1

* device only Reference(T_CABS_DeviceMetric_NumericMetric)

* subject 1..1 MS
* subject ^short = "Referenz auf den Patienten"
* subject only Reference(T_CABS_Patient)

* insert Grenzwertdefinition
* insert Beatmungsprozedur