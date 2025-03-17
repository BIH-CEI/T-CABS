Instance: leckage-gemessen-beispiel-breas
InstanceOf: t-cabs-observation-leckage
Usage: #example
Title: "Beispiel Leckage Breas (Observation)"
Description: "Leckagerate unter Beatmung -
TreatmentDataDetailDto - leakage"
* partOf = Reference(procedure-PSV-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[loinc] = $LOINC#76296-3 "Ventilator airway circuit leakage volume"
* code.coding[IEEE-11073] = $IEEE-11073#152432 "MDC_VENT_VOL_LEAK"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 2
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #L/min

* device = Reference(deviceMetric-gemessen-beispiel-breas)
