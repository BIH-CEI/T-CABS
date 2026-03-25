Profile: T_CABS_Observation_IPAP
Parent: T_CABS_Observation_Beatmungsparameter
Id: t-cabs-observation-ipap
Title: "T-CABS Observation IPAP"
Description: "Profile for Inspiratory Positive Airway Pressure (IPAP)"

* code.coding = $IEEE-11073#8410976 //"MDC_SABTE_PRESS_IPAP_SET"
* code.coding ^definition = "Setting of target inspiration therapy pressure in BiLevel PAP mode during a breath cycle"

* valueQuantity.code = #cm[H2O]
* valueQuantity.unit = "cm[H2O]"


Instance: Example-IPAP-BREAS
InstanceOf: T_CABS_Observation_IPAP
Usage: #example
Title: "Example IPAP BREAS"
Description: "Example of IPAP from a BREAS ventilator"
* status = #final
* code.coding = $IEEE-11073#8410976 "MDC_SABTE_PRESS_IPAP_SET"
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-10-07T22:00:00+02:00"
* effectivePeriod.end = "2024-10-07T22:15:00+02:00"
* valueQuantity.value = 15
* valueQuantity.code = #cm[H2O]
* valueQuantity.unit = "cm[H2O]"
* valueQuantity.system = $UCUM
* device = Reference(DeviceMetric/beispiel-devicemetric-breas-ipap)
* partOf = Reference(Procedure/beispiel-beatmung-breas)
* referenceRange.low.value = 5
* referenceRange.low.unit = "cm[H2O]"
* referenceRange.low.system = $UCUM
* referenceRange.low.code = #cm[H2O]
* referenceRange.high.value = 25
* referenceRange.high.unit = "cm[H2O]"
* referenceRange.high.system = $UCUM
* referenceRange.high.code = #cm[H2O]
* referenceRange.type = $cs-referenceRangeMeaning#therapeutic
