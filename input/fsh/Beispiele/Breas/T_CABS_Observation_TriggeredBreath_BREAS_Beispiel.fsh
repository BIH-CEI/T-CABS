Instance: triggeredBreaths-gemessen-beispiel-breas
InstanceOf: t-cabs-observation-triggeredbreaths
Usage: #example
Title: "Beispiel TriggeredBreaths Breas (Observation)"
Description: "TreatmentDataDetailDto - triggeredBreaths"
* partOf = Reference(procedure-PSV-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250878004 "Triggered breath rate (observable entity)"
* code.coding[loinc] = $LOINC#LA20140-2 "Unassisted respiratory rate"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 50
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* device = Reference(deviceMetric-gemessen-beispiel-breas)
