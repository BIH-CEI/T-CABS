Profile: T_CABS_Observation_Atemfrequenz_beatmet
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/spontane-mechanische-atemfrequenz-beatmet
Id: t-cabs-observation-atemfrequenz-beatmet
Title: "T-CABS Observation AF"
Description: "Profil für eine gemessene oder eingestellte Atemfrequenz des Beatmungsgerätes"


* category.coding ^slicing.discriminator.type = #type   
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false
* category.coding contains vs-cat 1..1 MS
* category.coding[vs-cat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs


* code.coding = $LOINC#9279-1

* insert Grenzwertdefinition