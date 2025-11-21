Profile: T_CABS_Observation_BeatmungsparameterMitKomponenten
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/CompoundNumericObservation
Id: t-cabs-observation-beatmungsparametermitkomponenten
Title: "T-CABS Observation Ventilation Parameter with Components (abstract)"
Description: "Abstract profile for ventilation parameters with multiple values"

* code.coding MS

* effective[x] 1..1

* value[x] 0..0

* device only Reference(T_CABS_DeviceMetric_NumericMetric)

* subject MS
* subject ^short = "Reference to the patient"
* subject only Reference(T_CABS_Patient)

* insert ReferenceRangeDefinition
* insert VentilationProcedure