Profile: T_CABS_Observation_Atemzeitverhaeltnis
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-atemzeitverhaeltnis
Title: "T-CABS Observation Atemzeitverhaeltnis"
Description: "Profil für Atemzeitverhältnis"

* code.coding = $IEEE-11073#153500 "MDC_TIME_PD_INSP_NORMALIZED_HF"
* code.coding ^definition = "Duration of an inspiratory phase normalized by the smaller of the duration of the inspiratory phase and the duration of the expiratory phase, during high frequency ventilation.
Example: if I:E = 1:3, I = 1 (T ≤ T)Example: if I:E = 1:0.33, I = 3 (T < T)
"

* valueQuantity.code = #%
* valueQuantity.unit = "%"


Instance: Example-Atemzeitverhaeltnis-ResMed
InstanceOf: T_CABS_Observation_Atemzeitverhaeltnis
Usage: #example
Title: "Beispiel Atemzeitverhältnis ResMed"
Description: "Beispiel für Atemzeitverhältnis von einem ResMed Beatmungsgerät"
* status = #final
* code.coding = $IEEE-11073#153500 "MDC_TIME_PD_INSP_NORMALIZED_HF"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T22:30:00+02:00"
* effectivePeriod.end = "2024-10-07T22:45:00+02:00"
* valueQuantity.value = 33
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-atemzeit)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)
