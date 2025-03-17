Profile: T_CABS_Observation_FEV1
Parent: SD_MII_ICU_Monitoring_Und_Vitaldaten
Id: t-cabs-observationfev1
Title: "FEV1 Observation"
Description: "Profile for recording Forced Expiratory Volume in 1 second (FEV1) as an observation."

* status MS 
* category 1..* MS
* category.coding 1..* MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* category.coding.display = "Vital Signs"
* code 1..1 MS
* code.coding 1..1 MS
* code.coding.system = "http://loinc.org" (exactly)
* code.coding.code = #20150-9 (exactly)
* code.coding.display = "Forced expiratory volume in 1 second (FEV1) [Volume] Respiratory system" (exactly)
* subject 1..1 MS
* subject.reference 1..1
* effective[x] 1..1 MS
* valueQuantity 1..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code = #L (exactly)