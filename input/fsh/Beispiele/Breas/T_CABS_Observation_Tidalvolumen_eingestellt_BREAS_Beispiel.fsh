// DeviceSettings - TargetVolume
Instance: Tidalvolumen
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/atemzugvolumen-einstellung
Usage: #example
Title: "Tidalvolumen"
Description: "Beispiel eines eingestellten Tidalvolumens"

* partOf = Reference(Procedure-PSV-123)

* category.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"

* effectivePeriod.start = "2019-12-23T09:30:10+01:00"
* effectivePeriod.end = "2019-12-23T10:30:10+01:00"

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

// Wert auf mL
* valueQuantity.value = 500

* status = #final

* device = Reference(DeviceMetric-Eingestellt-Beispiel-BREAS)
