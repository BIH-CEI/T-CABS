Profile: T_CABS_Observation_TargetVolume
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-targetvolume
Title: "T-CABS Observation Target Volume"
Description: "Profile for the target volume"

* code.coding = $IEEE-11073#153212 //"MDC_VENT_VOL_TIDAL_TARGET_AUTO"

* effective[x] only Period

* valueQuantity.code = #mL
* valueQuantity.unit = "mL"


Instance: Example-TargetVolume-BREAS
InstanceOf: T_CABS_Observation_TargetVolume
Usage: #example
Title: "Example Target Volume BREAS"
Description: "Example of target volume from a BREAS ventilator"
* status = #final
* code.coding = $IEEE-11073#153212 "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T21:00:00+02:00"
* effectivePeriod.end = "2024-10-07T21:30:00+02:00"
* valueQuantity.value = 450
* valueQuantity.code = #mL
* valueQuantity.unit = "mL"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-targetvolume)
* partOf = Reference(Procedure/beispiel-beatmung-breas)
* referenceRange.low.value = 300
* referenceRange.low.unit = "mL"
* referenceRange.low.system = $UCUM
* referenceRange.low.code = #mL
* referenceRange.high.value = 800
* referenceRange.high.unit = "mL"
* referenceRange.high.system = $UCUM
* referenceRange.high.code = #mL
* referenceRange.type = $cs-referenceRangeMeaning#therapeutic