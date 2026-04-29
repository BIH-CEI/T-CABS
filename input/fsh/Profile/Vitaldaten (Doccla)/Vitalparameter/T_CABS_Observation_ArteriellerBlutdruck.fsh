Profile: T_CABS_Observation_ArteriellerBlutdruck
Parent: T_CABS_Observation_VitalparameterMitKomponenten
Id: t-cabs-observation-arteriellerblutdruck
Title: "T-CABS Observation Arterial Blood Pressure"
Description: "Profile for arterial blood pressure.
Compatibility:
For the profile T_CABS_Observation_ArteriellerBlutdruck, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArteriellerBlutdruck are also valid against the [ISiKBlutdruckArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell)"

// Kompatibel zu "https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell"

* code.coding = $LOINC#85354-9 //"Blood pressure panel with all children optional"

// Use the PHD compound slice for blood pressure components
* component[compound] MS
* component[compound].code MS
* component[compound].value[x] MS
* component[compound].valueQuantity MS
* component[compound].valueQuantity.value MS
* component[compound].valueQuantity.unit MS
* component[compound].valueQuantity.unit = "mm[Hg]" 
* component[compound].valueQuantity.system MS
// system is already fixed to UCUM by PhdCompoundNumericObservation
* component[compound].valueQuantity.code MS
* component[compound].valueQuantity.code = #mm[Hg]
* component[compound].dataAbsentReason MS

Instance: Example-ArteriellerBlutdruck-Doccla
InstanceOf: T_CABS_Observation_ArteriellerBlutdruck
Usage: #example
Title: "Example Arterial Blood Pressure Measurement"
Description: "Example of an arterial blood pressure measurement via Doccla"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell|5.1.0"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* category[PHD-Observation].coding = http://hl7.org/fhir/uv/phd/CodeSystem/PhdObservationCategories#phd
* code.coding = $LOINC#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/tcabs-patient-example)
* effectivePeriod.start = "2024-01-15T09:00:00Z"
* effectivePeriod.end = "2024-01-15T09:00:00Z"
* component[compound][0].code.coding[MdcType] = $IEEE-11073#150021 "MDC_PRESS_BLD_NONINV_SYS"
* component[compound][0].code.coding[+] = $LOINC#8480-6 "Systolic blood pressure"
* component[compound][0].valueQuantity.value = 125
* component[compound][0].valueQuantity.unit = "mm[Hg]"
* component[compound][0].valueQuantity.system = $UCUM
* component[compound][0].valueQuantity.code = #mm[Hg]
* component[compound][+].code.coding[MdcType] = $IEEE-11073#150022 "MDC_PRESS_BLD_NONINV_DIA"
* component[compound][=].code.coding[+] = $LOINC#8462-4 "Diastolic blood pressure"
* component[compound][=].valueQuantity.value = 80
* component[compound][=].valueQuantity.unit = "mm[Hg]"
* component[compound][=].valueQuantity.system = $UCUM
* component[compound][=].valueQuantity.code = #mm[Hg]
* device = Reference(Device/beispiel-phd-blutdruckmessgeraet)
* extension[GatewayDevice].valueReference = Reference(Device/beispiel-phg-doccla)
