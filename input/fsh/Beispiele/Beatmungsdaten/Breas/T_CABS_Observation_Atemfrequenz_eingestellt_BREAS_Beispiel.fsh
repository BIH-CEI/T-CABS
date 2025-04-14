Instance: atemfrequenz-eingestellt-beispiel-breas
InstanceOf: t-cabs-observation-atemfrequenz-beatmet
Usage: #example
Title: "Beispiel eingestellte Atemfrequenz Breas (Observation)"
Description: "Eine eingestellte Atemfrequenz der Firma Breas
Treatment_Data - Breaths per minute (BPM)"

* partOf = Reference(procedure-PSV-123)
* status = #final
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 15
* valueQuantity.unit = "breaths per minute"
* valueQuantity.system = $UCUM

* device = Reference(deviceMetric-eingestellt-beispiel-breas)

// Grenzwerte
* referenceRange.low.value = 3
* referenceRange.low.code = #/min
* referenceRange.low.unit = "breaths per minute"
* referenceRange.low.system = $UCUM

* referenceRange.high.value = 50
* referenceRange.high.code = #/min
* referenceRange.high.unit = "breaths per minute"
* referenceRange.high.system = $UCUM