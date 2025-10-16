Profile: T_CABS_Observation_IPAP
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-ipap
Title: "T-CABS Observation IPAP"
Description: "Profil für einen Inspiratory Positive Airway Pressure (IPAP)"

* code.coding = $IEEE-11073#8410976 "MDC_SABTE_PRESS_IPAP_SET"

* valueQuantity.code = #mbar
* valueQuantity.unit = "mbar"


Instance: Example-IPAP-BREAS
InstanceOf: T_CABS_Observation_IPAP
Usage: #example
Title: "Beispiel IPAP BREAS"
Description: "Beispiel für IPAP von einem BREAS Beatmungsgerät"
* status = #final
* code.coding = $IEEE-11073#8410976 "MDC_SABTE_PRESS_IPAP_SET"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T22:00:00+02:00"
* effectivePeriod.end = "2024-10-07T22:15:00+02:00"
* valueQuantity.value = 15
* valueQuantity.code = #mbar
* valueQuantity.unit = "mbar"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-ipap)
* partOf = Reference(Procedure/beispiel-beatmung-breas)
