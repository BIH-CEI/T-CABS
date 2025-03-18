Instance: amv-gemessen-beispiel-loewenstein
InstanceOf: t-cabs-observation-amv
Usage: #example
Title: "Beispiel AMV Löwenstein (Observation)"
Description: "Atemminutvolumen(AMV) - Gemessenes Atemvolumen pro Minute /
minuteVolumeMedian_l_min - Median of the minute volume in l/min. Supported devices: prismaLINE, prismaVENT, Luisa"
* partOf = Reference(procedure-Bilevel-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250875001 "Ventilator delivered minute volume (observable entity)"
* code.coding[loinc] = $LOINC#76009-0 "Inspired minute Volume during Mechanical ventilation"
* code.coding[IEEE-11073] = $IEEE-11073#152004 "Ventilation inspiratory minute volume"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-123456)

* valueQuantity.value = 5
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #L/min

* device = Reference(deviceMetric-Gemessen-Beispiel-Loewenstein)
