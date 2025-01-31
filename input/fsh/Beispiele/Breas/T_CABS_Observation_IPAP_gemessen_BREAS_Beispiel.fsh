// Table Treatment_Data 
Instance: IPAP-123456
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/positiv-endexspiratorischer-druck
Usage: #example
Title: "IPAP"
Description: "Beispielhafte Messung des positiv-endexpiratorischer Druckes (IPAP)"

* partOf = Reference(Procedure-PSV-123)
* status = #final
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* effectivePeriod.start = "2022-07-15T00:00:00+01:00"
* effectivePeriod.end = "2022-07-21T00:00:00+01:00"

* code.coding[sct] = $SCT#250854009  "Positive end expiratory pressure (observable entity)"
* code.coding[loinc] = $LOINC#76248-4 "PEEP Respiratory system --on ventilator"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 60
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm[H2O]

* device = Reference(DeviceMetric-Gemessen-Beispiel-BREAS)

