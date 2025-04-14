Profile: T_CABS_Observation_BMI
Parent: Observation
Id: t-cabs-observation-bmi
Title: "T-CABS Observation BMI"
Description: "Profil für den Body Mass Index (BMI)"

* status MS
* category 1..* MS
* category.coding 1..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"
/*
* code 1..1 MS
* code.coding 1..* MS
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #39156-5 (exactly)
* code.coding.display = "Body mass index (BMI) [Ratio]" (exactly)
*/
* subject 1..1 MS
* subject.reference 1..1
* effective[x] 1..1 MS
* value[x] 1..1 MS
* value[x] only Quantity 
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code = #kg/m2 (exactly)