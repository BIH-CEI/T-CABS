// respRate() - 50
Instance: atemfrequenz-gemessen-beispiel-resmed
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/spontane-mechanische-atemfrequenz-beatmet
Usage: #example
Title: "Atemfrequenz_gemessen_Beispiel_ResMed"
Description: "Atemfrequenz gemessen"
* partOf = Reference(procedure-CPAP-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250810003 "Total breath rate (observable entity)"
* code.coding[loinc] = $LOINC#19840-8 "Breath rate spontaneous and mechanical --on ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#152490 "Total breath rate (observable entity)"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* valueQuantity.value = 15
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

* device = Reference(deviceMetric-gemessen-beispiel-resmed)