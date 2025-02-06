// TreatmentData - tidalVolume
Instance: tidalvolumen-gemessen-beispiel-breas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/atemzugvolumen-waehrend-beatmung
Usage: #example
Title: "Tidalvolumen"
Description: "Beispiel eines gemessenen Tidalvolumens während der Beatmung"

* partOf = Reference(procedure-PSV-123)

* status = #final

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250874002  "Ventilator delivered tidal volume (observable entity)"
* code.coding[loinc] = $LOINC#76222-9 "Tidal volume Ventilator --on ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#151980 "Ventilation tidal volume"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* valueQuantity.value = 500.0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mL

* device = Reference(deviceMetric-gemessen-beispiel-breas)

