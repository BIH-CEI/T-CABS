// Table Device_Settings - Item PSV(Tgv) - settingItems id 1
Instance: peep-eingestellt-beispiel-breas
InstanceOf: SD_MII_ICU_Positiv_Endexspiratorischer_Druck
Usage: #example
Title: "Beispiel eingestellter PEEP Breas (Observation)"
Description: "Beispielhafte Einstellung des positiv-endexpiratorischer Druckes (PEEP)"
* identifier.value = "1"
* partOf = Reference(procedure-PSV-123)
* status = #final
* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* code.coding[sct] = $SCT#250854009 "Positive end expiratory pressure (observable entity)"
* code.coding[loinc] = $LOINC#76248-4 "PEEP Respiratory system --on ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#151976 "Applied PEEP"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* effectivePeriod.start = "2022-07-15T00:00:00+01:00"
* effectivePeriod.end = "2022-07-21T00:00:00+01:00"

* valueQuantity.value = 3
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm[H2O]

* device = Reference(deviceMetric-eingestellt-beispiel-breas)

