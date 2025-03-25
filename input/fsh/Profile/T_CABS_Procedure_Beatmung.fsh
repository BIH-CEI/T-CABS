Profile: T_CABS_Procedure_Beatmung
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-icu/StructureDefinition/beatmung
Id: t-cabs-procedure-beatmung
Title: "T-CABS Procedure Beatmung"
Description: "Profil für die Beatmungsprozedur"


/* Beatmungsform - .code
Nicht-invasive Beatmung             - 428311008 "Non-invasive ventilation (regime/therapy)" 475199 "Non-invasive Ventilation"
Invasive Beatmung orotracheal       - 
Invasive Beatmung Trachealkanüle    - 
CPAP                                -
*/


// Beatmungsmodus - 
/*
 PCV            - 475172 "Pressure Control"
 PCV(A)         - 475147 "PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts."            
 PCV(A+TgV)     - 475148 "PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, with tidal volume target and pressure regulation, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts."
 PSV            - 475154 "PC: Pressure Control, PSV: Pressure Support Ventilation — Pressure-controlled, triggered ventilation with expiratory synchronization and backup respiratory rate. May include selectable adjuncts."
 S/T            - 475197 "BiLevel Airway Pressure Ventilation" iso_mode: Bi-level AV:SIMV-PC\PS\P
 VCV            - 475201 "Volume Control Ventilation"
*/
