// leak() - 50
Instance: leckage-gemessen-beispiel-resmed
InstanceOf: t-cabs-observation-leckage
Usage: #example
Title: "leckage-gemessen-beispiel-resmed"
Description: "Leckagerate unter Beatmung"
* partOf = Reference(procedure-CPAP-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[loinc] = $LOINC#76296-3 "Ventilator airway circuit leakage volume"
* code.coding[IEEE-11073] = $IEEE-11073#152432 "MDC_VENT_VOL_LEAK"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* valueQuantity.value = 1.8
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #L/min

* device = Reference(deviceMetric-gemessen-beispiel-resmed)
