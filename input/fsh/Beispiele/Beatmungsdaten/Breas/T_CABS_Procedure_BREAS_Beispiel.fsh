Instance: procedure-PSV-123
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Usage: #example
Title: " Beispiel Beatmungsprozedur Breas (Procedure)"
Description: "Ein Beispiel für eine Prozedur zur Beatmung"

* status = #in-progress

* category.coding[sct] = $SCT#40617009 "Artificial ventilation (regime/therapy)"

// OperationMode - PSV
* code.coding[sct] = $SCT#1259864003 "Pressure support ventilation (regime/therapy)"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* performedPeriod.start = "2021-12-28T13:40:00+01:00"

