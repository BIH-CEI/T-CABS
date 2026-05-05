Instance: t-cabs-cm-beatmungsmodi
InstanceOf: ConceptMap
Usage: #definition
* name = "TCABSBeatmungsmodi"
* title = "T-CABS ConceptMap Ventilation Modes"
* description = "Maps manufacturer-specific ventilation mode names to IEEE 11073-10101 ventilation mode codes. Based on Studienarzt-Zuarbeit (Modi_Heimbeatmungsgeräte). Covers BREAS (Vivo 55/45/3), Löwenstein (Luisa, prismaVent 50c), ResMed (Astral, Lumis, Stellar)."
* status = #draft
* experimental = false

// =============================================================================
// Group 1: BREAS mode names → IEEE 11073
// =============================================================================

* group[+].source = "https://bih-cei.github.io/T-CABS/CodeSystem/breas-ventilation-modes"
* group[=].target = "urn:iso:std:iso:11073:10101"

* group[=].element[+].code = #PSV
* group[=].element[=].display = "Pressure Support Ventilation"
* group[=].element[=].target[+].code = #475154
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PSV(TgV)"
* group[=].element[=].display = "Pressure Support with Target Volume"
* group[=].element[=].target[+].code = #475155
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_vtPS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #PCV
* group[=].element[=].display = "Pressure Control Ventilation"
* group[=].element[=].target[+].code = #475172
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PCV(A)"
* group[=].element[=].display = "Pressure Control Assist Control"
* group[=].element[=].target[+].code = #475147
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PCV(ATgV)"
* group[=].element[=].display = "Pressure Control Assist Control with Target Volume"
* group[=].element[=].target[+].code = #475148
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_vtPC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PCV-SIMV"
* group[=].element[=].display = "Pressure Control SIMV"
* group[=].element[=].target[+].code = #475144
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PCV-MPV"
* group[=].element[=].display = "Pressure Control MPV"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. MPV (Mouthpiece Ventilation) not in IEEE 11073 — mapped to CMV-PC as closest match"

* group[=].element[+].code = #VCV
* group[=].element[=].display = "Volume Control Ventilation"
* group[=].element[=].target[+].code = #475201
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_VC"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"VCV(A)"
* group[=].element[=].display = "Volume Control Assist Control"
* group[=].element[=].target[+].code = #475140
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_VC_6ACAPL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"VCV-SIMV"
* group[=].element[=].display = "Volume Control SIMV"
* group[=].element[=].target[+].code = #475136
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"VCV-MPV"
* group[=].element[=].display = "Volume Control MPV"
* group[=].element[=].target[+].code = #475138
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_VC_6ACAPL"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. MPV not in IEEE 11073 — mapped to CMV-VC with adjuncts"

* group[=].element[+].code = #CPAP
* group[=].element[=].display = "Continuous Positive Airway Pressure"
* group[=].element[=].target[+].code = #475161
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PSV(AE)"
* group[=].element[=].display = "Pressure Support with Auto-EPAP"
* group[=].element[=].target[+].code = #475198
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_vtPS_3CC"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. Adaptive mode — closest IEEE match is volume-targeted PS with Cycle Control"

* group[=].element[+].code = #"PCV(AE)"
* group[=].element[=].display = "Pressure Control with Auto-EPAP"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #HFNT
* group[=].element[=].display = "High Flow Nasal Therapy"
* group[=].element[=].target[+].code = #475190
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_HIFLOW_3NIV"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #S
* group[=].element[=].display = "Spontaneous"
* group[=].element[=].target[+].code = #184353
* group[=].element[=].target[=].display = "MDC_VENT_MODE_RESP_SPONT"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

// =============================================================================
// Group 2: Löwenstein mode names → IEEE 11073
// =============================================================================

* group[+].source = "https://bih-cei.github.io/T-CABS/CodeSystem/loewenstein-ventilation-modes"
* group[=].target = "urn:iso:std:iso:11073:10101"

* group[=].element[+].code = #ST
* group[=].element[=].display = "Spontaneous/Timed (S/T)"
* group[=].element[=].target[+].code = #475197
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #PSV
* group[=].element[=].display = "Pressure Support Ventilation"
* group[=].element[=].target[+].code = #475154
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #T
* group[=].element[=].display = "Timed (mandatory)"
* group[=].element[=].target[+].code = #475172
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. Timed mode mapped to PCV as closest mandatory pressure-controlled mode"

* group[=].element[+].code = #PCV
* group[=].element[=].display = "Pressure Control Ventilation"
* group[=].element[=].target[+].code = #475172
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #aPCV
* group[=].element[=].display = "Adaptive Pressure Control"
* group[=].element[=].target[+].code = #475147
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. Adaptive PCV — closest standard AC-PC mode"

* group[=].element[+].code = #"P-SIMV"
* group[=].element[=].display = "Pressure SIMV"
* group[=].element[=].target[+].code = #475144
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #MPVp
* group[=].element[=].display = "Mouthpiece Ventilation (pressure)"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #MPVv
* group[=].element[=].display = "Mouthpiece Ventilation (volume)"
* group[=].element[=].target[+].code = #475138
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_VC_6ACAPL"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #aVCV
* group[=].element[=].display = "Adaptive Volume Control"
* group[=].element[=].target[+].code = #475140
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_VC_6ACAPL"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #VCV
* group[=].element[=].display = "Volume Control Ventilation"
* group[=].element[=].target[+].code = #475201
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_VC"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #CPAP
* group[=].element[=].display = "Continuous Positive Airway Pressure"
* group[=].element[=].target[+].code = #475161
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #autoST
* group[=].element[=].display = "Auto S/T"
* group[=].element[=].target[+].code = #475198
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_vtPS_3CC"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. Adaptive mode with automatic pressure adjustment"

* group[=].element[+].code = #HFT
* group[=].element[=].display = "High Flow Therapy"
* group[=].element[=].target[+].code = #475190
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_HIFLOW_3NIV"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #S
* group[=].element[=].display = "Spontaneous"
* group[=].element[=].target[+].code = #184353
* group[=].element[=].target[=].display = "MDC_VENT_MODE_RESP_SPONT"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

// =============================================================================
// Group 3: ResMed mode names → IEEE 11073
// =============================================================================

* group[+].source = "https://bih-cei.github.io/T-CABS/CodeSystem/resmed-ventilation-modes"
* group[=].target = "urn:iso:std:iso:11073:10101"

* group[=].element[+].code = #CPAP
* group[=].element[=].display = "Continuous Positive Airway Pressure"
* group[=].element[=].target[+].code = #475161
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"S/T"
* group[=].element[=].display = "Spontaneous/Timed"
* group[=].element[=].target[+].code = #475197
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #PSV
* group[=].element[=].display = "Pressure Support Ventilation"
* group[=].element[=].target[+].code = #475154
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #APCV
* group[=].element[=].display = "Adaptive Pressure Control Ventilation"
* group[=].element[=].target[+].code = #475147
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"(A)PCV"
* group[=].element[=].display = "Assist Pressure Control Ventilation (Astral)"
* group[=].element[=].target[+].code = #475147
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #PCV
* group[=].element[=].display = "Pressure Control Ventilation"
* group[=].element[=].target[+].code = #475172
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #T
* group[=].element[=].display = "Timed (Lumis/Stellar)"
* group[=].element[=].target[+].code = #475172
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"V(A)C"
* group[=].element[=].display = "Volume Assist Control (Astral)"
* group[=].element[=].target[+].code = #475140
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_VC_6ACAPL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"P-SIMV"
* group[=].element[=].display = "Pressure SIMV (Astral)"
* group[=].element[=].target[+].code = #475144
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"V-SIMV"
* group[=].element[=].display = "Volume SIMV (Astral)"
* group[=].element[=].target[+].code = #475136
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #iVAPS
* group[=].element[=].display = "intelligent Volume Assured Pressure Support"
* group[=].element[=].target[+].code = #475198
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_vtPS_3CC"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed. Volume-targeted Pressure Support with Cycle Control"

* group[=].element[+].code = #S
* group[=].element[=].display = "Spontaneous (Lumis/Stellar)"
* group[=].element[=].target[+].code = #184353
* group[=].element[=].target[=].display = "MDC_VENT_MODE_RESP_SPONT"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #AutoSet
* group[=].element[=].display = "AutoSet (S9/AirSense)"
* group[=].element[=].target[+].code = #475161
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. AutoSet is auto-titrating CPAP — closest IEEE match is CPAP"

* group[=].element[+].code = #ASV
* group[=].element[=].display = "Adaptive Servo-Ventilation"
* group[=].element[=].target[+].code = #475198
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_vtPS_3CC"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Not reviewed. ASV is adaptive — closest IEEE match is volume-targeted PS with Cycle Control"
