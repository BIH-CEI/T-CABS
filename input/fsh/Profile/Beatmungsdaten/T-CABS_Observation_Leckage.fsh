Profile: T_CABS_Observation_Leckage
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/parameter-von-beatmung
Id: t-cabs-observation-leckage
Title: "T-CABS Observation Leckage"
Description: "Profil für die Leckagerate unter Beatmung"

* code.coding[loinc] = $LOINC#76296-3 "Ventilator airway circuit leakage volume"
* code.coding[IEEE-11073] = $IEEE-11073#152432 "MDC_VENT_VOL_LEAK"

* effective[x] 1..1
* effective[x] only Period

* valueQuantity.system = $UCUM
* valueQuantity.code = #L/min

* insert Grenzwertdefinition