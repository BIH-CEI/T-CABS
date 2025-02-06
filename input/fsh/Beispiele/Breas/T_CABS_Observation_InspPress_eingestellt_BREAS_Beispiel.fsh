// Table Device_Settings - Item PSV(Tgv) - settingItems id 0
Instance: inspPress-eingestellt-beispiel-breas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/mittlerer-beatmungsdruck
Usage: #example
Title: "InspiratoryPressure"
Description: "Beispielhafte Einstellung des mittleren Beatmungsdruckes"
* identifier.value = "0"
* partOf = Reference(procedure-PSV-123)
* status = #final
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#698821009 "Mean inspiratory airway pressure (observable entity)"
* code.coding[loinc] = $LOINC#76530-5 "Mean pressure Respiratory system airway --on ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#151975 "Mean pressure Respiratory system airway --on ventilator"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* effectivePeriod.start = "2022-07-15T00:00:00+01:00"
* effectivePeriod.end = "2022-07-21T00:00:00+01:00"

* valueQuantity.value = 30
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm[H2O]

* device = Reference(deviceMetric-eingestellt-beispiel-breas)