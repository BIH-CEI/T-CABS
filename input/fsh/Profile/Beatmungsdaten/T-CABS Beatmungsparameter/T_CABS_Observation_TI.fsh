Profile: T_CABS_Observation_TI
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-ti
Title: "T-CABS Observation TI"
Description: "Profil für ein Dauer der Einatmungsphase (Inspiration)"

* code.coding = $IEEE-11073#152416 "MDC_VENT_TIME_PD_INSP"

* valueQuantity.code = #s
* valueQuantity.unit = "s"


Instance: Example-TI-Loewenstein
InstanceOf: T_CABS_Observation_TI
Usage: #example
Title: "Beispiel TI Löwenstein"
Description: "Beispiel für Inspirationszeit von einem Löwenstein Beatmungsgerät"
* status = #final
* code.coding = $IEEE-11073#152416 "MDC_VENT_TIME_PD_INSP"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T20:30:00+02:00"
* effectivePeriod.end = "2024-10-07T20:45:00+02:00"
* valueQuantity.value = 1.2
* valueQuantity.code = #s
* valueQuantity.unit = "s"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-loewenstein-ti)
* partOf = Reference(Procedure/beispiel-beatmung-loewenstein)
