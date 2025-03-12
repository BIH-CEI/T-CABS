Instance: amv-gemessen-beispiel-breas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmungsvolumen-pro-minute-maschineller
Usage: #example
Title: "Beispiel gemessen AMV Breas (Observation)"
Description: "Atemminutvolumen(AMV) - Gemessenes Atemvolumen pro Minute
TreatmentDataDetailDto - minuteVolume"

* partOf = Reference(procedure-PSV-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250875001 "Ventilator delivered minute volume (observable entity)"
* code.coding[loinc] = $LOINC#76009-0 "Inspired minute Volume during Mechanical ventilation"
* code.coding[IEEE-11073] = $IEEE-11073#152004 "Ventilation inspiratory minute volume"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 5
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #L/min

* device = Reference(deviceMetric-gemessen-beispiel-breas)