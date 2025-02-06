// DeviceSettings - TargetVolume
Instance: tidalvolumen-eingestellt-beispiel-breas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/atemzugvolumen-einstellung
Usage: #example
Title: "Tidalvolumen"
Description: "Beispiel eines eingestellten Tidalvolumens"

* partOf = Reference(procedure-PSV-123)
* status = #final
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#416811008 "Tidal volume setting (observable entity)"
* code.coding[loinc] = $LOINC#20112-9 "Tidal volume setting Ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#16929196 "Tidal volume setting"

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)


* valueQuantity.value = 500.0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mL

* device = Reference(deviceMetric-eingestellt-beispiel-breas)
