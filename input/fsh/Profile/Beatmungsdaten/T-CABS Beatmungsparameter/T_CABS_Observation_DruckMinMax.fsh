Profile: T_CABS_Observation_DruckMinMax
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-druck-minmax
Title: "T-CABS Observation Druck MIN/MAX"
Description: "Profil für den minimalen und maximalen Beatmungsdruck"

* code.coding = $IEEE-11073#151792 "MDC_PRESS_AWAY"

* effective[x] only Period

* value[x] 0..0

* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    MinPress 0..1 MS and
    MaxPress 0..1 MS
* component[MinPress].code MS
* component[MinPress].code = $IEEE-11073#151794 "MDC_PRESS_AWAY_MIN"
* component[MinPress].value[x] only Quantity
* component[MinPress].valueQuantity.unit = "mbar"
* component[MinPress].valueQuantity.system = $UCUM
* component[MinPress].valueQuantity.code = #mbar
* component[MaxPress].code MS
* component[MaxPress].code = $IEEE-11073#151793 "MDC_PRESS_AWAY_MAX"
* component[MaxPress].value[x] only Quantity
* component[MaxPress].valueQuantity.unit = "mbar"
* component[MaxPress].valueQuantity.system = $UCUM
* component[MaxPress].valueQuantity.code = #mbar

Instance: Example-DruckMinMax-ResMed
InstanceOf: T_CABS_Observation_DruckMinMax
Usage: #example
Title: "Beispiel Druck Min/Max ResMed"
Description: "Beispiel für minimalen und maximalen Beatmungsdruck von einem ResMed Gerät"
* status = #final
* code.coding = $IEEE-11073#151792 "MDC_PRESS_AWAY"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T23:00:00+02:00"
* effectivePeriod.end = "2024-10-07T23:30:00+02:00"
* component[MinPress].code = $IEEE-11073#151794 "MDC_PRESS_AWAY_MIN"
* component[MinPress].valueQuantity.value = 4
* component[MinPress].valueQuantity.code = #mbar
* component[MinPress].valueQuantity.unit = "mbar"
* component[MinPress].valueQuantity.system = $UCUM
* component[MaxPress].code = $IEEE-11073#151793 "MDC_PRESS_AWAY_MAX"
* component[MaxPress].valueQuantity.value = 20
* component[MaxPress].valueQuantity.code = #mbar
* component[MaxPress].valueQuantity.unit = "mbar"
* component[MaxPress].valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-druck)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)

