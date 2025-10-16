Profile: T_CABS_DiagnosticReport_Visitenbefund
Parent: DiagnosticReport
Id: t-cabs-diagnosticreport-visitenbefund
Title: "T-CABS DiagnosticReport Visitenbefund"
Description: "Profil für einen Beurteilung der wöchentlichen, telemedizinischen Visite innerhalb der T-CABS Studie"

* status MS

* code MS
* code = $LOINC#34131-3 "Outpatient Progress note"

* subject only Reference(T_CABS_Patient)

* encounter only Reference(T_CABS_Encounter_Kontakt)

* issued 1..1 MS

* result only Reference(T_CABS_Observation_Beatmungsparameter or T_CABS_Observation_Vitalparameter)

* conclusion 1..1 MS

* conclusionCode MS

Instance: Example-DiagnosticReport-Woechentliche-Visite
InstanceOf: T_CABS_DiagnosticReport_Visitenbefund
Usage: #example
Title: "Beispiel DiagnosticReport Wöchentliche Visite"
Description: "Beispiel für einen Visitenbefund einer wöchentlichen telemedizinischen Visite"
* identifier.system = "http://tcabs.example.org/diagnosticreports"
* identifier.value = "DR-TCABS-WEEKLY-001"
* status = #final
* code = $LOINC#34131-3 "Outpatient Progress note"
* subject = Reference(Patient/tcabs-patient-example)
* encounter = Reference(Encounter/Example-Encounter-Telemedizinische-Visite)
* effectiveDateTime = "2024-01-22T09:00:00Z"
* issued = "2024-01-22T10:00:00Z"
* performer = Reference(Practitioner/tcabs-practitioner-example)
* result[+] = Reference(Observation/Example-AMV-BREAS-gemessen)
* result[+] = Reference(Observation/Example-AHI-BREAS)
* result[+] = Reference(Observation/Example-Atemfrequenz-ResMed-gemessen)
* result[+] = Reference(Observation/Example-Leckage-ResMed)
* result[+] = Reference(Observation/Example-PEEP-Loewenstein)
* result[+] = Reference(Observation/Example-TriggeredBreaths-Loewenstein)
* result[+] = Reference(Observation/Example-BMI-Doccla)
* result[+] = Reference(Observation/Example-ArterielleSPO2-Doccla)
* conclusion = "Patient zeigt stabile Beatmungsparameter über alle Geräte hinweg. BREAS: AMV im Normalbereich bei 8,5 L/min, AHI mit 5,2 innerhalb des therapeutischen Ziels. ResMed: Atemfrequenz stabil bei 14/min, Leckage minimal bei 0,6 L/min. Löwenstein: Synchronisation bei 85%, TriggeredBreaths mit 92% zeigen sehr gute Patient-Gerät-Interaktion. Vitalparameter ebenfalls stabil: BMI 25,3 kg/m², SpO2 98%."