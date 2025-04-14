// alveolarVentilation() spontTriggBreaths
Instance: triggeredBreaths-gemessen-beispiel-resmed
InstanceOf: t-cabs-observation-triggeredbreaths
Usage: #example
Title: "Beispiel TriggeredBreaths ResMed (Observation)"
Description: "Gemessene Atemzüge die vom Patienten eigenständig getriggert wurden"
* partOf = Reference(procedure-CPAP-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250878004 "Triggered breath rate (observable entity)"
* code.coding[loinc] = $LOINC#LA20140-2 "Unassisted respiratory rate"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* valueQuantity.value = 35
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* device = Reference(deviceMetric-gemessen-beispiel-resmed)
