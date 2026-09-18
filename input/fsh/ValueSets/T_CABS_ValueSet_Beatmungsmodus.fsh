ValueSet: T_CABS_ValueSet_Beatmungsmodus
Id: t-cabs-valueset-Beatmungsmodus
Title: "T-CABS ValueSet Ventilation Mode"
Description: "This ValueSet contains codes to represent the different ventilation modes"


// PCV(A) - PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts.
* $IEEE-11073#475147 "MDC_VENT_MODE_ISO_AC_PC_6ACAP" 

// PCV(A+TgV) - PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, with tidal volume target and pressure regulation, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts.
* $IEEE-11073#475148 "MDC_VENT_MODE_ISO_AC_vtPC_6ACAP"

// PSV - PC: Pressure Control, PSV: Pressure Support Ventilation — Pressure-controlled, triggered ventilation with expiratory synchronization and backup respiratory rate. May include selectable adjuncts.
* $IEEE-11073#475154 "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"

// S/T - BiLevel Airway Pressure Ventilation" iso_mode: Bi-level AV:SIMV-PC\PS\P
* $IEEE-11073#475197 "MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP"

// VCV - Volume Control Ventilation
* $IEEE-11073#475201 "MDC_VENT_MODE_ISO_CMV_VC"

// CPAP - Continuous pressure in airway during spontaneous respiration.
* $IEEE-11073#475161 "MDC_VENT_MODE_ISO_CSV_6ACAP"

// VCV(A) 
* $IEEE-11073#475140 "MDC_VENT_MODE_ISO_AC_VC_6ACAPL"

// VCV-SIMV - VC: Volume Control, SIMV: Synchronized Intermittent Mandatory Ventilation — Intermittent, triggered, volume-controlled ventilation with a fixed inspiratory flow, allowing spontaneous breathing during the expiratory phase. May include selectable adjuncts.
* $IEEE-11073#475136 "MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL"

// HFT
* $IEEE-11073#475190 "MDC_VENT_MODE_ISO_HIFLOW_3NIV"

// PSV(TgV)
* $IEEE-11073#475155 "MDC_VENT_MODE_ISO_CSV_vtPS_6ACAP_012_015"

// PCV-SIMV
* $IEEE-11073#475144 "MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP"

// S / PSV ohne verpflichtende Backup-Frequenz - Spontanatmung mit Druckunterstuetzung
// Ersetzt 184353 MDC_VENT_MODE_RESP_SPONT (2026-09-09): dessen Definition "spontaneous respiration
// without mechanical help" widerspricht dem druckunterstuetzten S-Modus.
* $IEEE-11073#475162 "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"

// PCV(TgV) - Druckkontrolliert mit Zielvolumen, ohne Assist-Qualifier
* $IEEE-11073#475151 "MDC_VENT_MODE_ISO_CMV_vtPC_6ACAP"

// iVAPS - Adaptive volume-targeted Pressure Support with Cycle Control
// Nur noch von #40 iVAPS genutzt; #38 PSV(AE) und #39 autoST wurden 2026-09-09 umgebunden.
* $IEEE-11073#475198 "MDC_VENT_MODE_ISO_CSV_vtPS_3CC"

// PCV(AE) - Continuous pressure-controlled ventilation with adjuncts
* $IEEE-11073#475149 "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"

// VCV-MPV / MPVv - fallback auf CMV_VC (MPV nicht in IEEE 11073 definiert)
// Hersteller-spezifische Kennzeichnung via translation erforderlich
* $IEEE-11073#475138 "MDC_VENT_MODE_ISO_CMV_VC_6ACAPL"

/*
aVCV	    - 
Option 1 - Standard Volume Control mit Assist:

475140 - MDC_VENT_MODE_ISO_AC_VC_6ACAPL (Assist Control Volume Control)
475193 - MDC_VENT_MODE_ISO_AC_VC_3CC (Assist Control Volume Control mit Cycle Control)

Option 2 - Volume Control mit adaptiven Eigenschaften (mit Cycle Control):

475193 - MDC_VENT_MODE_ISO_AC_VC_3CC

HFNT	- 1259025002 "Heated and humidified high flow oxygen therapy using nasal cannula"
iVAPS	- 475198 "MDC_VENT_MODE_ISO_CSV_vtPS_3CC" Volume Support (volume-targeted Pressure Support with Cycle Control)
S
APCV & aPCV	- 475172 "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC" (adaptiv) oder 475147 "MDC_VENT_MODE_ISO_AC_PC_6ACAP"	(Standard AC-PC)
PCV-MPV & MPVp - 475149 "MDC_VENT_MODE_ISO_CMV_PC_6ACAP" Continuous pressure-controlled ventilation allowing spontaneous breathing during the entire respiratory cycle

VCV-MPV
Option 1 - Basis:

IEEE 11073-10101 Code: 475201
Display: MDC_VENT_MODE_ISO_CMV_VC
Definition: Volume Control Ventilation

Option 2 - Mit Adjunkten:

IEEE 11073-10101 Code: 475138
Display: MDC_VENT_MODE_ISO_CMV_VC_6ACAPL
Definition: Continuous volume-controlled ventilation with fixed inspiratory flow

PCV(AE)		
Möglichkeit 1: AE = Assist/Exhalation (Standard AC-PC)
Möglichkeit 2: AE = Airway Pressure Release (APRV)
Möglichkeit 3: Standard CMV-PC (ohne spezielle Features)

MPVv
		
PSV(AE)		
autoST		
*/