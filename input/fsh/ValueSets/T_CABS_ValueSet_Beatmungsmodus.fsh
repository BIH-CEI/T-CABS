ValueSet: T_CABS_ValueSet_Beatmungsmodus
Id: t-cabs-valueset-Beatmungsmodus
Title: "T-CABS ValueSet Beatmungsmodus"
Description: "Dieses ValueSet enthält Codes um die verschiedenen Beatmungsmodi abzubilden"

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
* $IEEE-11073#151796 "MDC_PRESS_AWAY_CTS_POS"


/*
PCV	
VCV	
PSV(TgV)	
VCV(A)	
CPAP
PCV(TgV)		
PSV	
VCV-SIMV	
HFT         - 475190 "MDC_VENT_MODE_ISO_HIFLOW_3NIV" ODER 475168 "MDC_VENT_MODE_ISO_HIFLOW"
T		    - 
PCV(A)	
aVCV	
HFNT
PCV(ATgV)	
iVAPS	
S
APCV		
PCV-MPV
PCV-SIMV		
VCV-MPV
PCV(AE)		
MPVv
aPCV		
MPVp
PSV(AE)		
autoST		
*/