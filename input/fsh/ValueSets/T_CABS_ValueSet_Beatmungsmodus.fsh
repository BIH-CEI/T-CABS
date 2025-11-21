ValueSet: T_CABS_ValueSet_Beatmungsmodus
Id: t-cabs-valueset-Beatmungsmodus
Title: "T-CABS ValueSet Ventilation Mode"
Description: "This ValueSet contains codes to represent the different ventilation modes"

// PCV - Pressure Control
* $IEEE-11073#475172 "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"

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

/*
PCV(TgV)	- 
T		    - 
aVCV	
HFNT	
iVAPS	
S
APCV		
PCV-MPV
VCV-MPV
PCV(AE)		
MPVv
aPCV		
MPVp
PSV(AE)		
autoST		
*/