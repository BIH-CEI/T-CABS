Profile: T_CABS_Observation_Atemfrequenz_beatmet
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-atemfrequenz-beatmet
Title: "T-CABS Observation AF"
Description: "Profil für eine gemessene oder eingestellte Atemfrequenz des Beatmungsgerätes"

* code.coding = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"

* valueQuantity.code = #/min
* valueQuantity.unit = "/min"

Instance: Example-Atemfrequenz-ResMed-gemessen
InstanceOf: T_CABS_Observation_Atemfrequenz_beatmet
Usage: #example
Title: "Beispiel Atemfrequenz Messung ResMed"
Description: "Beispiel für eine gemessene Atemfrequenz von einem ResMed Beatmungsgerät"
* status = #final
* code.coding = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:20:00Z"
* effectivePeriod.end = "2024-01-15T23:20:00Z"
* valueQuantity.value = 14
* valueQuantity.code = #/min
* valueQuantity.unit = "/min"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-atemfrequenz)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)