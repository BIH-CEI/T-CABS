Profile: T_CABS_Observation_Beatmungsstunden
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/parameter-von-beatmung
Id: t-cabs-observation-beatmungsstunden
Title: "Beatmungsstunden"
Description: "Anzahl der Beatmungsstunden"

* code.coding = $SCT#261774000 "Duration of treatment (qualifier value)"

* effective[x] 1..1
* effective[x] only Period

* valueQuantity.code = #h