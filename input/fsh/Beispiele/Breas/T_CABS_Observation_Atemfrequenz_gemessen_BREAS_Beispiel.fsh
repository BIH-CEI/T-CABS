Instance: atemfrequenz-gemessen-beispiel-breas
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/spontane-mechanische-atemfrequenz-beatmet
Usage: #example
Title: "Beispiel gemessen Atemfrequenz Breas (Observation)"
Description: "Eine beispielhafte Atemfrequenz der Firma Breas
Treatment_Data - Breaths per minute (BPM)"
* partOf = Reference(procedure-PSV-123)
* status = #final

* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

* code.coding[sct] = $SCT#250810003 "Total breath rate (observable entity)"
* code.coding[loinc] = $LOINC#19840-8 "Breath rate spontaneous and mechanical --on ventilator"
* code.coding[IEEE-11073] = $IEEE-11073#152490 "Total breath rate (observable entity)"

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* valueQuantity.value = 15
* valueQuantity.unit = "breaths per minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

* device = Reference(deviceMetric-gemessen-beispiel-breas)
