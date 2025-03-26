Profile: T_CABS_Observation_Gehstrecke
Parent: SD_MII_ICU_Monitoring_Und_Vitaldaten
Id: t-cabs-observation-gehstrecke
Title: "Gehstrecke"

* status MS

// Category
* category 1..* MS
* category.coding 1..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #activity

// Code
* code 1..1 MS
* code.coding 1..1 MS
* code.coding contains LOINC 0..1

* code.coding[LOINC].code = $LOINC#455430-3
* code.coding[LOINC].display = "Walking distance unspecified time Pedometer"

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #[mi_us]/(24.h)
