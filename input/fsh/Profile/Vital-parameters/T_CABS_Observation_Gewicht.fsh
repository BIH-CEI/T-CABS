Profile: T_CABS_Observation_Gewicht
Parent: SD_MII_ICU_Koerpergewicht
Id: t-cabs-observation-gewicht
Title: "Gewicht"

* status MS

// Category
* category 1..* MS
* category.coding 1..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs

// Code
* code 1..1 MS
* code.coding 2..2 MS
* code.coding contains LOINC 0..1 and SNOMED 0..1

//* code.coding[IEEE11073].code = $IEEE-11073#188736 "MDC_MASS_BODY_ACTUAL" 
//* code.coding[IEEE11073].display = "MDC_MASS_BODY_ACTUAL" 
* code.coding[LOINC].code = $LOINC#29463-7
* code.coding[LOINC].display = "Body weight"
* code.coding[SNOMED].code = $SCT#27113001
* code.coding[SNOMED].display = "Body weight (observable entity)"

* effective[x] only Period

* performer MS
* value[x] MS
* dataAbsentReason MS
* method MS
* device MS

