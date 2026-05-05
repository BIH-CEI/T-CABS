Profile: T_CABS_Observation_TriggeredBreaths
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-triggeredbreaths
Title: "T-CABS Observation Triggered Breaths"
Description: "Profile for the percentage of spontaneously triggered breaths within a time period"

* code.coding = $IEEE-11073#152538 //"MDC_VENT_RESP_BTSD_PS_RATE" // Includes unassisted and supported breaths
//* code.coding = $IEEE-11073#152538 "MDC_VENT_RESP_BTSD_PS_RATE" // Includes unassisted and supported breaths
* code.coding ^definition = "Rate of breaths or inspiratory gas flow initiated and terminated by the patient where pressure and flow/volume delivery are determined by the patient without support or assistance by the ventilator. Includes unassisted and supported breaths that are superimposed on the intermittently elevated baseline pressure with APRV, bilevel or spontaneous-only modes."
//* code.coding ^definition = "Rate of breaths or inspiratory gas flow initiated by the patient where flow and/or volume is determined by the patient and is delivered with the intention that the breath will be terminated by the patient. Includes unassisted and supported breaths that are superimposed on the intermittently elevated baseline pressure with APRV, bilevel or spontaneous-only modes."

* effective[x] only Period

* valueQuantity.code = #%
* valueQuantity.unit = "%"


Instance: Example-TriggeredBreaths-Loewenstein
InstanceOf: T_CABS_Observation_TriggeredBreaths
Usage: #example
Title: "Example Triggered Breaths Löwenstein"
Description: "Example of triggered breaths from a Löwenstein ventilator"
* status = #final
* code.coding = $IEEE-11073#152538 "MDC_VENT_RESP_BTSD_PS_RATE"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T22:00:00Z"
* effectivePeriod.end = "2024-01-16T06:00:00Z"
* valueQuantity.value = 92
* valueQuantity.code = #%
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-loewenstein-triggeredbreaths)
* partOf = Reference(Procedure/beispiel-beatmung-loewenstein)