//PatientDayUsageEvent - totalDurationHours?
Instance: beatmungsstunden-gemessen-beispiel-breas
InstanceOf: t-cabs-observation-beatmungsstunden
Usage: #example
Title: "Beispiel gemessen Beatmungsstunden Breas (Observation)"
Description: "Beatmungsdauer des Patienten in Stunden"
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#261774000 "Duration of treatment (qualifier value)"

* partOf = Reference(procedure-PSV-123)
* status = #final

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* valueQuantity.value = 8

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)