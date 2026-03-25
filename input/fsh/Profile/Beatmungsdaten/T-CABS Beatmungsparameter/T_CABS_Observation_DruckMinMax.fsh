Invariant:   tcabs-druck-1
Description: "If both MinPress and MaxPress are present, MinPress must be less than MaxPress"
Severity:    #error
Expression:  "component.where(code.coding.code='151794').value.ofType(Quantity).value.empty() or component.where(code.coding.code='151793').value.ofType(Quantity).value.empty() or (component.where(code.coding.code='151794').value.ofType(Quantity).value.first() < component.where(code.coding.code='151793').value.ofType(Quantity).value.first())"

Profile: T_CABS_Observation_DruckMinMax
Parent: T_CABS_Observation_BeatmungsparameterMitKomponenten
Id: t-cabs-observation-druck-minmax
Title: "T-CABS Observation Pressure MIN/MAX"
Description: "Profile for minimal and maximal ventilation pressure"

* obeys tcabs-druck-1

* code.coding = $IEEE-11073#151792 //"MDC_PRESS_AWAY"
* code.coding ^definition = "Pressure of gas in airway."

* effective[x] only Period

* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    MinPress 0..1 MS and
    MaxPress 0..1 MS
* component[MinPress].code MS
* component[MinPress].code = $IEEE-11073#151794 //"MDC_PRESS_AWAY_MIN"
* component[MinPress].code.coding ^definition = "Minimum pressure of gas in airway."
* component[MinPress].value[x] only Quantity
* component[MinPress].valueQuantity.unit = "cm[H2O]"
* component[MinPress].valueQuantity.code = #cm[H2O]
* component[MaxPress].code MS
* component[MaxPress].code = $IEEE-11073#151793 //"MDC_PRESS_AWAY_MAX"
* component[MaxPress].code.coding ^definition = "Peak pressure of gas in airway."
* component[MaxPress].value[x] only Quantity
* component[MaxPress].valueQuantity.unit = "cm[H2O]"
* component[MaxPress].valueQuantity.code = #cm[H2O]

Instance: Example-DruckMinMax-ResMed
InstanceOf: T_CABS_Observation_DruckMinMax
Usage: #example
Title: "Example Pressure Min/Max ResMed"
Description: "Example of minimal and maximal ventilation pressure from a ResMed device"
* status = #final
* code.coding = $IEEE-11073#151792 "MDC_PRESS_AWAY"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T23:00:00+02:00"
* effectivePeriod.end = "2024-10-07T23:30:00+02:00"
* component[MinPress].code = $IEEE-11073#151794 "MDC_PRESS_AWAY_MIN"
* component[MinPress].valueQuantity.value = 4
* component[MinPress].valueQuantity.code = #cm[H2O]
* component[MinPress].valueQuantity.unit = "cm[H2O]"
* component[MinPress].valueQuantity.system = $UCUM
* component[MaxPress].code = $IEEE-11073#151793 "MDC_PRESS_AWAY_MAX"
* component[MaxPress].valueQuantity.value = 20
* component[MaxPress].valueQuantity.code = #cm[H2O]
* component[MaxPress].valueQuantity.unit = "cm[H2O]"
* component[MaxPress].valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-resmed-druck)
* partOf = Reference(Procedure/beispiel-beatmung-resmed)
