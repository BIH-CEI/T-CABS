// totalUsageHoursOnDevice
Instance: beatmungsstunden-gemessen-beispiel-resmed
InstanceOf: t-cabs-observation-beatmungsstunden
Usage: #example
Title: "Beispiel Beatmungsstunden ResMed (Observation)"
Description: "Beispiel von gemessenen Beatmungsstunden eines Gerätes des Unternehmens ResMed"

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#261774000 "Duration of treatment (qualifier value)"

* partOf = Reference(procedure-CPAP-123)
* status = #final
// usage() 
//  duration

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* valueQuantity.value = 12

* subject = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* device = Reference(deviceMetric-gemessen-beispiel-resmed)