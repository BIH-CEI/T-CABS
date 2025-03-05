Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-snomed = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-snomed
Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-loinc = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-loinc
Alias: $vs-mii-icu-code-monitoring-und-vitaldaten-iso11073 = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-code-monitoring-und-vitaldaten-iso11073
Alias: $vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten = https://gematik.de/fhir/isik/ValueSet/vs-mii-icu-bodysite-observation-monitoring-und-vitaldaten
Alias: $sd-mii-icu-monitoring-und-vitaldaten = https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-monitoring-und-vitaldaten

Profile: T_CABS_Observation_SPO2
Parent: SD_MII_ICU_Sauerstoffsaettigung_Im_Arteriellen_Blut_Durch_Pulsoxymetrie
Id: t-cabs-observation-spo2
Title: "T-CABS Observation SPO2"

* code.coding[sct] from $vs-mii-icu-code-monitoring-und-vitaldaten-snomed (required)
* code.coding[sct] = $SCT#442476006 "Arterial oxygen saturation (observable entity)"

* code.coding[loinc] from $vs-mii-icu-code-monitoring-und-vitaldaten-loinc (required)
* code.coding[loinc] = $LOINC#59408-5 "	Oxygen saturation in Arterial blood by Pulse oximetry"


* effectivePeriod.start 1..1 MS
* effectivePeriod.end 1..1 MS

* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* bodySite 1..1 MS
* bodySite.coding 1..* MS
* bodySite.coding.system 1..1 MS
* bodySite.coding.code = #11527006 (exactly)
* bodySite.coding.display = "Arterial system structure (body structure)"



Instance: Example-TCABS-Observation-SPO2
InstanceOf: T_CABS_Observation_SPO2
Usage: #example

* meta.profile[0] = "https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-arteriellen-blut-durch-pulsoxymetrie"
* status = #final

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding[0].code = #vital-signs

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #442476006
* code.coding[0].display = "Arterial oxygen saturation (observable entity)"
* code.coding[0].version = "http://snomed.info/sct/900000000000207008/version/20241101"
* code.coding[1].system = "http://loinc.org"
* code.coding[1].code = #59408-5
* code.coding[1].display = "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.coding[2].system = "urn:iso:std:iso:11073:10101"
* code.coding[2].code = #150324
* code.coding[3].system = "http://loinc.org"
* code.coding[3].code = #2708-6

* subject.reference = "Patient/111"

* effectivePeriod.start = "2019-12-23T08:30:10Z"
* effectivePeriod.end = "2019-12-23T09:30:10Z"

* valueQuantity.value = 98
* valueQuantity.unit = "percent"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* bodySite.coding[0].system = "http://snomed.info/sct"
* bodySite.coding[0].code = #11527006
* bodySite.coding[0].display = "Arterial system structure (body structure)"