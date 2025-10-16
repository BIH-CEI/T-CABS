Profile: T_CABS_Observation_Gehstrecke
Parent: t-cabs-observation-vitalparameter
Id: t-cabs-observation-gehstrecke
Title: "T-CABS Observation Gehstrecke"
Description: "Profil für die Gehstrecke pro Tag (24 Stunden)"

* code.coding[LoincCoding] = $LOINC#41950-7 "Number of steps in 24 hour Measured"
* code.coding[MDCType] = $IEEE-11073#158033 

// Taegliche Schrittzahl
* valueQuantity.code = #{#}/(24.h)
* valueQuantity.unit = "{#}/(24.h)"

Instance: Example-Gehstrecke-Doccla
InstanceOf: T_CABS_Observation_Gehstrecke
Usage: #example
Title: "Beispiel Gehstrecke Messung"
Description: "Beispiel für eine Gehstrecken-Messung über Doccla"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#41950-7 "Number of steps in 24 hour Measured"
* code.coding[MDCType] = $IEEE-11073#158033
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T23:59:00Z"
* effectivePeriod.end = "2024-01-15T23:59:00Z"
* valueQuantity.value = 8520
* valueQuantity.code = #{#}/(24.h)
* valueQuantity.unit = "{#}/(24.h)"
* valueQuantity.system = $UCUM
* device = Reference(Device/beispiel-phd-doccla)