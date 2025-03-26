Instance: atemfrequenz-gemessen-beispiel-breas
InstanceOf: t-cabs-observation-af
Usage: #example
Title: "Beispiel gemessene Atemfrequenz Breas (Observation)"
Description: "Eine gemessene Atemfrequenz der Firma Breas
Treatment_Data - Breaths per minute (BPM)"

* partOf = Reference(procedure-PSV-123)
* status = #final
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 60
* valueQuantity.unit = "breaths per minute"

* device = Reference(deviceMetric-gemessen-beispiel-breas)

// Link auf Einstellung!