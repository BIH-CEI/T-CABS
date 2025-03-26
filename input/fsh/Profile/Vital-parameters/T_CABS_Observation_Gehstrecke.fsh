Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-snomed = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-snomed
Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-loinc = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-loinc
Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-iso11073 = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-iso11073
Alias: $vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten

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
