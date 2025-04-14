Instance: beatmungsstunden-gemessen-beispiel-loewenstein
InstanceOf: t-cabs-observation-beatmungsstunden
Usage: #example
Title: "Beispiel Beatmungsstunden Löwenstein (Observation)"
Description: "Beatmungsdauer des Patienten in Stunden"
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#261774000 "Duration of treatment (qualifier value)"

* partOf = Reference(procedure-Bilevel-123)
* status = #final

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* valueQuantity.value = 6

* subject = Reference(patient-123456)

* device = Reference(deviceMetric-Gemessen-Beispiel-Loewenstein)