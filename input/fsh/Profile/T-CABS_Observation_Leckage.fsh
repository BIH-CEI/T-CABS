Profile: T_CABS_Observation_Leckage
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/parameter-von-beatmung
Id: t-cabs-observation-leckage
Title: "Leckage"
Description: "Leckagerate unter Beatmung"

* code.coding[sct] = $SCT#38785003 "Air leakage (morphologic abnormality)"
* code.coding[loinc] = $LOINC#76296-3 "Ventilator airway circuit leakage volume"

* effective[x] 1..1
* effective[x] only Period

* valueQuantity.code = #L/min