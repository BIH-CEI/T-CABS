Profile: T_CABS_Observation_Herzfrequenz
Parent: SD_MII_ICU_Herzfrequenz
Id: t-cabs-observation-herzfrequenz

* status MS
// Category (Vital Signs)
/*
* category 1..* MS
* category.coding 1..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #vital-signs


// Code (Heart Rate Slicing)
* code 1..1 MS
* code.coding 3..*
* code.coding contains LOINC 1..1 and SCT 1..1 and IEEE-11073 1..1
* code.coding[LOINC].code = $LOINC#8867-4
* code.coding[LOINC].display = "Heart Rate"

* code.coding[SCT].code = $SCT#364075005
* code.coding[SCT].display = "Heart rate (observable entity)"
* code.coding[SCT].version = "http://snomed.info/sct/900000000000207008/version/20241101"

* code.coding[IEEE-11073].system = "urn:iso:std:iso:11073:10101"
* code.coding[IEEE-11073].code = #147842
* code.coding[IEEE-11073].display = "Heart Rate"
*/

// Subject (Patient Reference)
* subject 1..1 MS
* subject only Reference(Patient)

// Effective Period
* effective[x] 1..1 MS

* encounter MS
* performer MS
* value[x] MS

* dataAbsentReason MS

* method MS
* device MS