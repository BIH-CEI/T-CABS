Profile: T_CABS_Procedure_Beatmung
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Id: t-cabs-procedure-beatmung
Title: "T-CABS Procedure Beatmung"
Description: "Profil für die Beatmungsprozedur"


/* Beatmungsform - .category
Nicht-invasive Beatmung             - 428311008 "Non-invasive ventilation (regime/therapy)" 475199 "Non-invasive Ventilation"
Invasive Beatmung                   - 1258985005 "Invasive mechanical ventilation (regime/therapy)"
Invasive Beatmung orotracheal       - bodysite?
Invasive Beatmung Trachealkanüle    - bodysite?
CPAP                                - 47545007 "Continuous positive airway pressure ventilation treatment (regime/therapy)"
*/

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false
* category.coding contains beatmungsform 1..1 MS
* category.coding[beatmungsform] from t-cabs-valueset-Beatmungsform (required)
* category.coding[beatmungsform].code 1..1 MS
* category.coding[beatmungsform].system 1..1 MS

// Beatmungsmodus - .code
/*
 PCV            - 475172 "Pressure Control"
 PCV(A)         - 475147 "PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts."            
 PCV(A+TgV)     - 475148 "PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, with tidal volume target and pressure regulation, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts."
 PSV            - 475154 "PC: Pressure Control, PSV: Pressure Support Ventilation — Pressure-controlled, triggered ventilation with expiratory synchronization and backup respiratory rate. May include selectable adjuncts."
 S/T            - 475197 "BiLevel Airway Pressure Ventilation" iso_mode: Bi-level AV:SIMV-PC\PS\P
 VCV            - 475201 "Volume Control Ventilation"
 CPAP           - 151796 ""
*/
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains beatmungsmodus 1..1 MS
* code.coding[beatmungsmodus] from t-cabs-valueset-Beatmungsmodus (required)
* code.coding[beatmungsmodus].code 1..1 MS
* code.coding[beatmungsmodus].system 1..1 MS

* usedReference 1..1 MS
* usedReference only Reference(t-cabs-device-beatmungsgeraet) 

/*
.bodysite  ??
orotracheal
Trachealkanüle
Maske?
*/