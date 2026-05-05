Profile: T_CABS_Procedure_Beatmung
Parent: Procedure
Id: t-cabs-procedure-beatmung
Title: "T-CABS Procedure Ventilation"
Description: "Profile for the ventilation procedure"

* status 1..1 MS 

* category 1..1 MS
* category ^definition = "Code if the ventilation is invasive or non-invasive"
* category.coding 1..* MS
* category.coding from t-cabs-valueset-Beatmungsform (required)

* code 1..1 MS
* code ^definition = "Code of the ventilation mode"
* code.coding 1..* MS
* code.coding from t-cabs-valueset-Beatmungsmodus (required)

* usedReference 1..1 MS
* usedReference only Reference(t-cabs-device-mds-beatmungsgeraet) 

* subject 1..1 MS
* subject only Reference(T_CABS_Patient)

* performed[x] 1..1 MS
* performed[x] only Period

* bodySite MS
* bodySite from t-cabs-valueset-beatmungsstelle (required)

Instance: beispiel-beatmung-breas
InstanceOf: T_CABS_Procedure_Beatmung
Usage: #example
Title: "Example Ventilation BREAS"
Description: "Example of a ventilation procedure with BREAS device (PCV mode)"
* status = #completed
* category.coding = $SCT#1258985005 "Invasive mechanical ventilation"
* code.coding = $IEEE-11073#475147 "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* subject = Reference(Patient/tcabs-patient-example)
* performedPeriod.start = "2024-01-15T22:00:00Z"
* performedPeriod.end = "2024-01-16T06:00:00Z"
* usedReference = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-beatmung-loewenstein
InstanceOf: T_CABS_Procedure_Beatmung
Usage: #example
Title: "Example Ventilation Löwenstein"
Description: "Example of a ventilation procedure with Löwenstein device (PSV mode)"
* status = #completed
* category.coding = $SCT#1258985005 "Invasive mechanical ventilation"
* code.coding = $IEEE-11073#475154 "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* subject = Reference(Patient/tcabs-patient-example)
* performedPeriod.start = "2024-01-15T22:00:00Z"
* performedPeriod.end = "2024-02-18T06:00:00Z"
* usedReference = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-beatmung-resmed
InstanceOf: T_CABS_Procedure_Beatmung
Usage: #example
Title: "Example Ventilation ResMed"
Description: "Example of a ventilation procedure with ResMed device (CPAP mode)"
* status = #completed
* category.coding = $SCT#428311008 "Non-invasive ventilation"
* code.coding = $IEEE-11073#475161 "MDC_VENT_MODE_ISO_CSV_6ACAP"
* subject = Reference(Patient/tcabs-patient-example)
* performedPeriod.start = "2024-01-15T22:00:00Z"
* performedPeriod.end = "2024-03-13T06:00:00Z"
* usedReference = Reference(Device/beispiel-beatmungsgeraet-resmed)

