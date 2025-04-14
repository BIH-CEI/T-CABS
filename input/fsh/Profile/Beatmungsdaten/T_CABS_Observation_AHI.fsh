Profile: T_CABS_Observation_AHI
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/parameter-von-beatmung
Id: t-cabs-observation-ahi
Title: "T-CABS Observation AHI"
Description: "Profil für den Apnoe-Hyponoe-Index (AHI) - Gesamtzahl der während des Schlafs aufgetretenen Apnoe- und Hypopnoe-Episoden, geteilt durch die Schlafdauer in Stunden"

* code.coding[sct] = $SCT#774099003 "Apnea Hypopnea Index (observable entity)"
* code.coding[loinc] = $LOINC#90564-6 "Central apnea hypopnea index"

* effective[x] 1..1
* effective[x] only Period

* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

* insert Grenzwertdefinition