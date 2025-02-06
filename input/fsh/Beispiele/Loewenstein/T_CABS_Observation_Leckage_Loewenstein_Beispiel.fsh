Instance: leckage-gemessen-beispiel-loewenstein
InstanceOf: t-cabs-observation-leckage
Usage: #example
Title: "leckage-gemessen-beispiel-loewenstein"
Description: "Leckagerate unter Beatmung -
leakageMedian_liter_min - Median of unintentional leakage flow in l/min. Supported devices: prismaSOFT, prismaSMART, prismaLINE, prismaVENT, Luisa"
* partOf = Reference(procedure-Bilevel-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[loinc] = $LOINC#76296-3 "Ventilator airway circuit leakage volume"
* code.coding[IEEE-11073] = $IEEE-11073#152432 "MDC_VENT_VOL_LEAK"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-123456)

* valueQuantity.value = 2
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #L/min

* device = Reference(deviceMetric-Gemessen-Beispiel-Loewenstein)
