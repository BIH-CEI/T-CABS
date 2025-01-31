// TreatmentData - Breaths per minute (BPM)
Instance: Atemfrequenz-123
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/spontane-mechanische-atemfrequenz-beatmet
Usage: #example
Title: "Atemfrequenz-123"
Description: "Eine beispielhafte Atemfrequenz der Firma Breas"
* partOf = Reference(Procedure-PSV-123)
* status = #final

* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code.coding[sct].code = #250810003
* code.coding[sct].display = "Respiratory rate (observable entity)"

//Preocedure

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 15
* valueQuantity.unit = "breaths per minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

* device = Reference(DeviceMetric-Gemessen-Beispiel-BREAS)
