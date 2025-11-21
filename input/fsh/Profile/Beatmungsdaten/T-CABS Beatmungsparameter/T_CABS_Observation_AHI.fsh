Profile: T_CABS_Observation_AHI
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-ahi
Title: "T-CABS Observation AHI"
Description: "Profile for the Apnea-Hypopnea Index (AHI) - Total number of apnea and hypopnea episodes that occurred during sleep, divided by sleep duration in hours"

* code.coding = $IEEE-11073#8410792 //"MDC_SABTE_AHI_TOTAL"

* effective[x] only Period

* valueQuantity.code = #{score}

Instance: Example-AHI-BREAS
InstanceOf: T_CABS_Observation_AHI
Usage: #example
Title: "Example AHI Measurement BREAS"
Description: "Example of an AHI measurement from a BREAS ventilator"
* status = #final
* code.coding = $IEEE-11073#8410792 "MDC_SABTE_AHI_TOTAL"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T22:00:00Z"
* effectivePeriod.end = "2024-01-16T06:00:00Z"
* valueQuantity.value = 5.2
* valueQuantity.code = #{score}
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-ahi)
* partOf = Reference(Procedure/beispiel-beatmung-breas)