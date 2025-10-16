Profile: T_CABS_Practitioner_PersonMitFunktion
Parent: Practitioner
Id: t-cabs-practitioner-personmitfunktion
Title: "T-CABS Person mit Funktion"
Description: "Profil für eine beteildigte Person innerhalb der T-CABS Studie"

* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* name 1..*
* name.family 1..1 MS
* name.given 1..1 MS

// Beispielinstanz
Instance: tcabs-practitioner-example
InstanceOf: T_CABS_Practitioner_PersonMitFunktion
Usage: #example
Title: "T-CABS Practitioner Example"
Description: "Beispielärztin für das T-CABS Projekt"
* identifier.system = "http://tcabs.example.org/practitioners"
* identifier.value = "TCABS-DOC-001"
* name.family = "Schmidt"
* name.given = "Anna"
