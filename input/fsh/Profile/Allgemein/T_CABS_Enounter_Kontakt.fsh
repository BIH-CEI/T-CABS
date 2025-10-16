Profile: T_CABS_Encounter_Kontakt
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Id: t-cabs-encounter-kontakt
Title: "T-CABS Encounter Kontakt"
Description: "Profil für einen Kontakt/ eine Visite innerhalb der T-CABS Studie"

// type  #konsil
// class = #VR "virtual" oder #HH "home health" oder ambulat/stationär?

* subject 1..1 MS
* subject only Reference(t-cabs-patient)
// Gesehen
* period 1..1

* serviceProvider MS

Instance: Example-Encounter-Telemedizinische-Visite
InstanceOf: T_CABS_Encounter_Kontakt
Usage: #example
Title: "Beispiel Telemedizinische Visite"
Description: "Beispiel für eine wöchentliche telemedizinische Visite eines T-CABS Patienten"
* identifier.system = "http://tcabs.example.org/encounters"
* identifier.value = "ENC-TCABS-WEEKLY-001"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"
* type = http://fhir.de/CodeSystem/kontaktart-de#konsil "Konsil"
* subject = Reference(Patient/tcabs-patient-example)
* period.start = "2024-01-22T09:00:00Z"
* period.end = "2024-01-22T09:30:00Z"
* serviceProvider.reference = "Organization/beispiel-provider-loewenstein"
* serviceProvider.identifier.system = "http://tcabs.example.org/providers"
* serviceProvider.identifier.value = "PROV-LOEW-001"
* serviceProvider.display = "Löwenstein Medical"
* participant.individual = Reference(Practitioner/tcabs-practitioner-example)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "attender"