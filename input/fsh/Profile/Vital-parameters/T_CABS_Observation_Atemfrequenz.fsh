Profile: T_CABS_Observation_Atemfrequenz
Parent: SD_MII_ICU_Atemfrequenz
Id: t-cabs-observation-atemfrequenz
Title: "Atemfrequenz"

* status MS
* subject MS
* encounter MS
* performer MS

/*
* code.coding[loinc] = $LOINC#9279-1
* code.coding[snomed] = $SCT#86290005
*/

* effective[x] MS
* value[x] MS

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

* dataAbsentReason MS

// Messmethode der Atemfrequenz per Doccla?
* method MS

// Messgeräte
* device MS


