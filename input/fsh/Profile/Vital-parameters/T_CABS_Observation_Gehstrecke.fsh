Profile: T_CABS_Observation_Gehstrecke
Parent: sd-mii-icu-monitoring-und-vitaldaten
Id: t-cabs-observation-gehstrecke
Title: "Gehstrecke"

* status MS

// Category
* category 1..* MS
* category.coding 1..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #activity

* code.coding[loinc].code = $LOINC#455430-3
* code.coding[loinc].display = "Walking distance unspecified time Pedometer"

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #[mi_us]/(24.h)
