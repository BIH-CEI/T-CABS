Instance: procedure-CPAP-123
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Usage: #example
Title: "Procedure_Beatmungsprozedur"
Description: "Ein Beispiel für eine Prozedur zur Beatmung"

* status = #in-progress

* category.coding[sct] = $SCT#40617009 "Artificial ventilation (regime/therapy)"

// OperationMode - CPAP
* code.coding[sct] = $SCT#47545007 "Continuous positive airway pressure ventilation treatment (regime/therapy)"

* subject = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* performedPeriod.start = "2021-12-28T13:40:00+01:00"