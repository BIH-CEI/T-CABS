Profile: T_CABS_Observation_Beatmungsparameter
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/NumericObservation
Id: t-cabs-observation-beatmungsparameter
Title: "T-CABS Observation Ventilation Parameter (abstract)"
Description: "Abstract profile for ventilation parameters"

* code.coding MS

* effective[x] 1..1

* device only Reference(T_CABS_DeviceMetric_NumericMetric)

* subject MS
* subject ^short = "Reference to the patient"
* subject only Reference(T_CABS_Patient)

* insert ReferenceRangeDefinition
* insert VentilationProcedure