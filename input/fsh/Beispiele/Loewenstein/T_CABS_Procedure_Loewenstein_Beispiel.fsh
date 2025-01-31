Instance: Procedure-Beatmungsprozedur-Bilevel
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Usage: #example
Title: "Procedure_Beatmungsprozedur"
Description: "Ein Beispiel für eine Prozedur zur Beatmung"

* status = #in-progress

* category.coding[sct] = $SCT#40617009 "Artificial ventilation (regime/therapy)"

// OperationMode - Bilevel
* code.coding[sct] = $SCT#1186618000 "Bilevel artificial ventilation (regime/therapy)"

* subject = Reference(patient-123456)

* performedPeriod.start = "2021-12-28T13:40:00+01:00"