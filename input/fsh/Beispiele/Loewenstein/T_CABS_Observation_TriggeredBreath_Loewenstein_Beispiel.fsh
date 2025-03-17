// portionOfMandatoryBreaths_percent
Instance: triggeredBreaths-gemessen-beispiel-loewenstein
InstanceOf: t-cabs-observation-triggeredbreaths
Usage: #example
Title: "Beispiel TriggeredBreath Löwenstein (Observation)"
Description: "Beispielhafte Beobachtung von Atemzüge die vom Patienten eigenständig getriggert wurden"
* partOf = Reference(procedure-Bilevel-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250878004 "Triggered breath rate (observable entity)"
* code.coding[loinc] = $LOINC#LA20140-2 "Unassisted respiratory rate"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-123456)

* valueQuantity.value = 35
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* device = Reference(deviceMetric-gemessen-beispiel-resmed)
