Profile: T_CABS_Practitioner_PersonMitFunktion
Parent: Practitioner
Id: t-cabs-practitioner-personmitfunktion
Title: "T-CABS Person with Function"
Description: "Profile for an involved person within the T-CABS study.
Compatibility:
The T_CABS_Practitioner_PersonMitFunktion profile aims for compatibility with ISiK version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Practitioner_PersonMitFunktion are also valid against the [ISiKPersonImGesundheitsberuf](https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf)"

* identifier.system 1..1 MS
* identifier.value 1..1 MS

* name MS
* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "$this"
* name ^slicing.rules = #open
* name contains Name 1..1 MS
* name[Name] only HumannameDeBasis
* name[Name] ^short = "Full name"
* name[Name] ^patternHumanName.use = #official
* name[Name].use 1.. MS
* name[Name].use = #official (exactly)
* name[Name].family 1.. MS
* name[Name].given 1.. MS
* name[Name].prefix MS


// Beispielinstanz
Instance: tcabs-practitioner-example
InstanceOf: T_CABS_Practitioner_PersonMitFunktion
Usage: #example
Title: "T-CABS Practitioner Example"
Description: "Example physician for the T-CABS project"
* meta.profile = "https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf"
* identifier.system = "http://tcabs.example.org/practitioners"
* identifier.value = "TCABS-DOC-001"
* name[Name].family = "Schmidt"
* name[Name].given = "Anna"
* name[Name].text = "Anna Schmidt"
* telecom.system = #email
* telecom.value = "anna.schmidt@tcabs-clinic.de"