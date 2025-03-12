// spontTriggBreaths() - 50
Instance: amv-gemessen-beispiel-resmed
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmungsvolumen-pro-minute-maschineller
Usage: #example
Title: "Beispiel AMV ResMed (Observation)"
Description: "Atemminutvolumen(AMV) - Gemessenes Atemvolumen pro Minute
TreatmentDataDetailDto - minuteVolume"

* partOf = Reference(procedure-CPAP-123)
* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250875001 "Ventilator delivered minute volume (observable entity)"
* code.coding[loinc] = $LOINC#76009-0 "Inspired minute Volume during Mechanical ventilation"
* code.coding[IEEE-11073] = $IEEE-11073#152004 "Ventilation inspiratory minute volume"

// Daily
* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-24T09:30:10+01:00"

* subject = Reference(patient-44187887-a48d-4f4e-9393-e4207045a2c4)

* valueQuantity.value = 7.5
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #L/min

* device = Reference(deviceMetric-gemessen-beispiel-resmed)