Profile: T_CABS_Observation_AMV
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-amv
Title: "T-CABS Observation AMV"
Description: "Profile for a alveolar minute volume"

* code.coding = $IEEE-11073#151996 //"MDC_VENT_VOL_MINUTE"

* valueQuantity.code = #L/min
* valueQuantity.unit = "L/min"


Instance: Example-AMV-BREAS-gemessen
InstanceOf: T_CABS_Observation_AMV
Usage: #example
Title: "Example AMV Measurement BREAS"
Description: "Example of a measured AMV measurement from a BREAS ventilator"
* status = #final
* code.coding = $IEEE-11073#151996 "MDC_VENT_VOL_MINUTE"
* subject = Reference(Patient/tcabs-patient-example)
* effectiveDateTime = "2024-01-15T23:30:00Z"
* valueQuantity.value = 8.5
* valueQuantity.code = #L/min
* valueQuantity.unit = "L/min"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-amv)
* partOf = Reference(Procedure/beispiel-beatmung-breas)

