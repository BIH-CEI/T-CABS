Profile: T_CABS_Procedure_Beatmung
Parent: Procedure
Id: t-cabs-procedure-beatmung
Title: "T-CABS Procedure Beatmung"
Description: "Profil für die Beatmungsprozedur"

* status MS 

* category 1..1 MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false
* category.coding contains beatmungsform 1..1 MS
* category.coding[beatmungsform] from t-cabs-valueset-Beatmungsform (required)
* category.coding[beatmungsform].code 1..1 MS
* category.coding[beatmungsform].system 1..1 MS

* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding contains beatmungsmodus 0..1 MS
* code.coding[beatmungsmodus] from t-cabs-valueset-Beatmungsmodus (required)
* code.coding[beatmungsmodus].code 1..1 MS
* code.coding[beatmungsmodus].system 1..1 MS

* usedReference 1..1 MS
* usedReference only Reference(t-cabs-device-mds-beatmungsgeraet) 

* subject MS
* subject only Reference(T_CABS_Patient)

* performed[x] 1..1 MS
* performed[x] only Period

* bodySite MS

Instance: beispiel-beatmung-breas
InstanceOf: T_CABS_Procedure_Beatmung
Usage: #example
Title: "Beispiel Beatmung BREAS"
Description: "Beispiel für eine Beatmungsprozedur mit BREAS Gerät (PCV Modus)"
* status = #completed
* category.coding[beatmungsform] = $SCT#1258985005 "Invasive mechanical ventilation (regime/therapy)"
* code.coding[beatmungsmodus] = $IEEE-11073#475147 "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* subject = Reference(Patient/tcabs-patient-example)
* performedPeriod.start = "2024-01-15T22:00:00Z"
* performedPeriod.end = "2024-01-16T06:00:00Z"
* usedReference = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-beatmung-loewenstein
InstanceOf: T_CABS_Procedure_Beatmung
Usage: #example
Title: "Beispiel Beatmung Löwenstein"
Description: "Beispiel für eine Beatmungsprozedur mit Löwenstein Gerät (PSV Modus)"
* status = #completed
* category.coding[beatmungsform] = $SCT#1258985005 "Invasive mechanical ventilation (regime/therapy)"
* code.coding[beatmungsmodus] = $IEEE-11073#475154 "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* subject = Reference(Patient/tcabs-patient-example)
* performedPeriod.start = "2024-01-15T22:00:00Z"
* performedPeriod.end = "2024-01-16T06:00:00Z"
* usedReference = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-beatmung-resmed
InstanceOf: T_CABS_Procedure_Beatmung
Usage: #example
Title: "Beispiel Beatmung ResMed"
Description: "Beispiel für eine Beatmungsprozedur mit ResMed Gerät (CPAP Modus)"
* status = #completed
* category.coding[beatmungsform] = $SCT#428311008 "Non-invasive ventilation (regime/therapy)"
* code.coding[beatmungsmodus] = $IEEE-11073#151796 "MDC_PRESS_AWAY_CTS_POS"
* subject = Reference(Patient/tcabs-patient-example)
* performedPeriod.start = "2024-01-15T22:00:00Z"
* performedPeriod.end = "2024-01-16T06:00:00Z"
* usedReference = Reference(Device/beispiel-beatmungsgeraet-resmed)

/*
.bodysite  ??
orotracheal
Trachealkanüle
Maske?
*/