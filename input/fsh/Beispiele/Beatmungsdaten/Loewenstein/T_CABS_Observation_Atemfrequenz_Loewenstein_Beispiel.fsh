// frequencyMedian_bpm
Instance: atemfrequenz-gemessen-beispiel-loewenstein
InstanceOf: t-cabs-observation-atemfrequenz-beatmet
Usage: #example
Title: "Beispiel Atemfrequenz Löwenstein (Observation)"
Description: "Median of the respiratory rate in bpm. The median corresponds to the 50th percentile. Supported devices: prismaLINE, prismaVENT, Luisa"
* partOf = Reference(procedure-Bilevel-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250810003 "Total breath rate (observable entity)"
* code.coding[loinc] = $LOINC#19840-8 "Breath rate spontaneous and mechanical --on ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#152490 "Total respiratory rate; total breath rate"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-123456)

* valueQuantity.value = 15
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
* valueQuantity.unit = "breaths per minute"

* device = Reference(deviceMetric-Gemessen-Beispiel-Loewenstein)
