Profile: T_CABS_Observation_Beatmungsstunden
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/parameter-von-beatmung
Id: t-cabs-observation-beatmungsstunden
Title: "T-CABS Observation Beatmungsstunden"
Description: "Profil für die empfohlene oder tatsächlich gemessene Anzahl der Beatmungsstunden je 24 Stunden"


* code.coding[sct] = $SCT#261774000 "Duration of treatment (qualifier value)"

* effective[x] 1..1
* effective[x] only Period

* valueQuantity.system = $UCUM
* valueQuantity.code = #h

* insert Grenzwertdefinition