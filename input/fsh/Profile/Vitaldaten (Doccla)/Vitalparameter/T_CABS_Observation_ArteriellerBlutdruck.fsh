Profile: T_CABS_Observation_ArteriellerBlutdruck
Parent: T_CABS_Observation_VitalparameterMitKomponenten
Id: t-cabs-observation-arteriellerblutdruck
Title: "T-CABS Observation Arterial Blood Pressure"
Description: "Profile for arterial blood pressure.
Compatibility:
For the profile T_CABS_Observation_ArteriellerBlutdruck, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArteriellerBlutdruck are also valid against the [ISiKBlutdruckArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell)"

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell"

* code.coding[LoincCoding] = $LOINC#85354-9 //"Blood pressure panel with all children optional"
* code.coding[MDCType] = $IEEE-11073#150016

* component MS
* component.code MS
* component.value[x] MS
* component.valueQuantity MS
* component.valueQuantity.value MS
* component.valueQuantity.unit MS
* component.valueQuantity.unit = "mm[Hg]"
* component.valueQuantity.system MS
* component.valueQuantity.system = $UCUM
* component.valueQuantity.code MS
* component.valueQuantity.code = #mm[Hg]

* component.dataAbsentReason MS
* component ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    SystolicBP 1..1 and
    DiastolicBP 1..1 and
    meanBP 0..1
* component[SystolicBP].code = $LOINC#8480-6
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].valueQuantity = $UCUM#mm[Hg]
* component[DiastolicBP].code = $LOINC#8462-4
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].valueQuantity = $UCUM#mm[Hg]
* component[meanBP].code = $LOINC#8478-0
* component[meanBP].value[x] only Quantity
* component[meanBP].valueQuantity = $UCUM#mm[Hg]

Instance: Example-ArteriellerBlutdruck-Doccla
InstanceOf: T_CABS_Observation_ArteriellerBlutdruck
Usage: #example
Title: "Example Arterial Blood Pressure Measurement"
Description: "Example of an arterial blood pressure measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell"
* status = #final
* category[VSCat].coding = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd-observation
* code.coding[LoincCoding] = $LOINC#85354-9 "Blood pressure panel with all children optional"
* code.coding[MDCType] = $IEEE-11073#150016
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:00:00Z"
* effectivePeriod.end = "2024-01-15T09:00:00Z"
* component[SystolicBP].code = $LOINC#8480-6
* component[SystolicBP].valueQuantity.value = 125
* component[SystolicBP].valueQuantity.unit = "mm[Hg]"
* component[SystolicBP].valueQuantity.system = $UCUM
* component[SystolicBP].valueQuantity.code = #mm[Hg]
* component[DiastolicBP].code = $LOINC#8462-4
* component[DiastolicBP].valueQuantity.value = 80
* component[DiastolicBP].valueQuantity.unit = "mm[Hg]"
* component[DiastolicBP].valueQuantity.system = $UCUM
* component[DiastolicBP].valueQuantity.code = #mm[Hg]
* device = Reference(Device/beispiel-phd-doccla)
* extension[gatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)