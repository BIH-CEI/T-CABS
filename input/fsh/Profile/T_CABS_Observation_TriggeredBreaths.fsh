Profile: T_CABS_Observation_TriggeredBreaths
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/parameter-von-beatmung
Id: t-cabs-observation-triggeredbreaths
Title: "Triggered Breaths"
Description: "Prozentzahl der selbstständig getriggerten Atemzüge innerhalb eines Zeitraums"

* code.coding[sct] = $SCT#250878004 "Triggered breath rate (observable entity)"
* code.coding[loinc] = $LOINC#LA20140-2 "Unassisted respiratory rate"

* effective[x] 1..1
* effective[x] only Period

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%