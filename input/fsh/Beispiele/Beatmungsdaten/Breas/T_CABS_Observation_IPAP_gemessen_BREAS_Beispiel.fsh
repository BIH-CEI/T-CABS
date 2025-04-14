// Table Treatment_Data 
/* 

Überarbeiten!

Instance: ipap-gemessen-beispiel
InstanceOf: 
Usage: #example
Title: "IPAP"
Description: "Beispielhafte Messung des IPAP"

* partOf = Reference(procedure-PSV-123)
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

* device = Reference(deviceMetric-gemessen-beispiel-breas)
*/
