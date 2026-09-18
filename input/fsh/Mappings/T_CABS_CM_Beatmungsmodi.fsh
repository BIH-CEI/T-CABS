Instance: t-cabs-cm-beatmungsmodi
InstanceOf: ConceptMap
Usage: #definition
* name = "TCABSBeatmungsmodi"
* title = "T-CABS ConceptMap Ventilation Modes"
* description = "Maps manufacturer-specific ventilation mode names to IEEE 11073-10101 ventilation mode codes. Based on Studienarzt-Zuarbeit (Modi_Heimbeatmungsgeräte) plus systematic datasheet analysis (2026-05). Covers BREAS (Vivo 50/55/60/65, Vivo 45/3), Löwenstein (LUISA LM150TD, prismaVENT 30/30-C/40/50, prismaVent 50c, sleep-therapy prisma 25ST/30ST), ResMed (Astral 100/150, Stellar 100/150, Lumis)."
* status = #draft
* experimental = false

// =============================================================================
// Group 1: BREAS mode names → IEEE 11073
// =============================================================================

* group[+].source = "https://bih-cei.github.io/T-CABS/CodeSystem/breas-ventilation-modes"
* group[=].target = "urn:iso:std:iso:11073:10101"

* group[=].element[+].code = #PSV
* group[=].element[=].display = "Pressure Support Ventilation"
// Zwei Zielcodes, unterschieden durch dependsOn: 475154 verlangt laut Definition eine Backup-
// Frequenz ("triggered ventilation with expiratory synchronization and backup respiratory rate"),
// 475162 nicht ("with or without pressure support"). Beide tragen denselben systematischen
// ISO-19223-Namen CSV-PS; der Unterschied steckt allein in den Fussnoten 012/015 (RTMMS iso_mode:
// "CSV-PS 12 15" vs. "CSV-PS"). Quelle der Unterscheidung: klinische Nachbewertung 2026-09-08.
* group[=].element[=].target[+].code = #475154
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[+].property = "https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory"
* group[=].element[=].target[=].dependsOn[=].value = "true"
* group[=].element[=].target[=].dependsOn[=].display = "Backup respiratory rate is always active in this mode"
* group[=].element[=].target[=].comment = "Applies where the backup rate cannot be switched off: BREAS Vivo 55/60 and Vivo 45 LS (minimum 4/min)."
* group[=].element[=].target[+].code = #475162
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[+].property = "https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory"
* group[=].element[=].target[=].dependsOn[=].value = "false"
* group[=].element[=].target[=].dependsOn[=].display = "Backup respiratory rate can be switched off or is absent"
* group[=].element[=].target[=].comment = "Applies where the rate can be set to 0/min: BREAS Vivo 3."

* group[=].element[+].code = #"PSV(TgV)"
* group[=].element[=].display = "Pressure Support with Target Volume"
* group[=].element[=].target[+].code = #475155
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_vtPS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #PCV
* group[=].element[=].display = "Pressure Control Ventilation"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475172. That code denotes assist-controlled ventilation with volume limitation and built-in leak and trigger compensation. The manufacturers distinguish PCV from PCV(A) precisely by patient triggering, so an assist-controlled code misstates the plain mode. CMV-PC matches it."

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

* group[=].element[+].code = #"PCV(TgV)"
* group[=].element[=].display = "Pressure Control Ventilation with Target Volume"
* group[=].element[=].target[+].code = #475151
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_vtPC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Added 2026-09 from the Vivo 50/55/60/65 datasheets, which list PCV(TgV) and PCV(A+TgV) as separate modes; only the assisted variant was mapped before. Not covered by the 2026 review. Target code taken by analogy: the assisted variant maps to AC_vtPC_6ACAP (475148), so the unassisted one maps to the CMV counterpart, mirroring the PCV/PCV(A) pair."

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
* group[=].element[=].target[+].code = #475154
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475198 CSV_vtPS_3CC. 475198 denotes volume-targeted pressure support, whereas PSV with Auto-EPAP has no volume target. The mode inherits the code of its base mode PSV; the Auto-EPAP adjunct remains uncoded, hence wider. Open: on the Vivo 3 the backup rate can be set to 0/min, which would point to 475162 - see Terminologies.html#backup-rate-mandatory."

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
* group[=].element[=].target[+].code = #475162
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 184353, which denotes spontaneous respiration without mechanical support and therefore does not describe the pressure-supported S mode. 475162 carries no mandatory backup rate, which matches it."

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
* group[=].element[=].target[=].dependsOn[+].property = "https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory"
* group[=].element[=].target[=].dependsOn[=].value = "true"
* group[=].element[=].target[=].dependsOn[=].display = "Backup respiratory rate is always active in this mode"
* group[=].element[=].target[=].comment = "Applies where the backup rate is always present: Loewenstein LUISA (background rate 2-60/min)."
* group[=].element[=].target[+].code = #475162
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[+].property = "https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory"
* group[=].element[=].target[=].dependsOn[=].value = "false"
* group[=].element[=].target[=].dependsOn[=].display = "Backup respiratory rate can be switched off or is absent"
* group[=].element[=].target[=].comment = "Applies where the rate can be set to 0/min: Loewenstein prismaVENT 50-C."

* group[=].element[+].code = #T
* group[=].element[=].display = "Timed (mandatory)"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475172 (A/C-PC[vLim] (LC) (TRGC)) for the same reason as PCV: a timed mode is purely mandatory, so an assist-control code misstates it. Mapped to CMV-PC as the closest mandatory pressure-controlled mode; the fixed timing is not separately coded."

* group[=].element[+].code = #PCV
* group[=].element[=].display = "Pressure Control Ventilation"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475172. That code denotes assist-controlled ventilation with volume limitation and built-in leak and trigger compensation. The manufacturers distinguish PCV from PCV(A) precisely by patient triggering, so an assist-controlled code misstates the plain mode. CMV-PC matches it."

* group[=].element[+].code = #aPCV
* group[=].element[=].display = "Assisted Pressure Control"
* group[=].element[=].target[+].code = #475147
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_AC_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed 2026 (4/4 equivalent). Assisted PCV — vendor prefix 'a' denotes assisted, not adaptive; AC-PC is the matching mode"

* group[=].element[+].code = #"P-SIMV"
* group[=].element[=].display = "Pressure SIMV"
* group[=].element[=].target[+].code = #475144
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #"PV-SIMV"
* group[=].element[=].display = "Volume SIMV"
* group[=].element[=].target[+].code = #475136
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Added 2026-08 from Luisa datasheet, which lists P-SIMV and PV-SIMV as separate modes. Not covered by the 2026 review; equivalence taken from the identical mappings of BREAS VCV-SIMV and ResMed V-SIMV to the same code (both rated equivalent by all four reviewers)."

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
* group[=].element[=].display = "Assisted Volume Control"
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
* group[=].element[=].target[+].code = #475197
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475198 CSV_vtPS_3CC. 475198 denotes volume-targeted pressure support; autoST automates EPAP and background rate but is not volume-assured. The mode inherits the code of its base mode S/T; the adaptive layer remains uncoded, hence wider. Open: MDC_SABTE_MODE_THERAPY_BPAP_ST_AUTO (8410897) names this mode directly but belongs to the sleep-therapy device family - to be decided."

* group[=].element[+].code = #HFT
* group[=].element[=].display = "High Flow Therapy"
* group[=].element[=].target[+].code = #475190
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_HIFLOW_3NIV"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Not reviewed."

* group[=].element[+].code = #S
* group[=].element[=].display = "Spontaneous"
* group[=].element[=].target[+].code = #475162
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 184353, which denotes spontaneous respiration without mechanical support and therefore does not describe the pressure-supported S mode. 475162 carries no mandatory backup rate, which matches it."

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
* group[=].element[=].target[=].dependsOn[+].property = "https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory"
* group[=].element[=].target[=].dependsOn[=].value = "true"
* group[=].element[=].target[=].dependsOn[=].display = "Backup respiratory rate is always active in this mode"
* group[=].element[=].target[=].comment = "Applies where the backup rate is always present: ResMed Stellar in ST."
* group[=].element[=].target[+].code = #475162
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[+].property = "https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory"
* group[=].element[=].target[=].dependsOn[=].value = "false"
* group[=].element[=].target[=].dependsOn[=].display = "Backup respiratory rate can be switched off or is absent"
* group[=].element[=].target[=].comment = "Applies where the rate can be switched off: ResMed Astral 150 in PS."

* group[=].element[+].code = #APCV
* group[=].element[=].display = "Assisted Pressure Control Ventilation"
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
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475172. That code denotes assist-controlled ventilation with volume limitation and built-in leak and trigger compensation. The manufacturers distinguish PCV from PCV(A) precisely by patient triggering, so an assist-controlled code misstates the plain mode. CMV-PC matches it."

* group[=].element[+].code = #T
* group[=].element[=].display = "Timed (Lumis/Stellar)"
* group[=].element[=].target[+].code = #475149
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CMV_PC_6ACAP"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 475172 (A/C-PC[vLim] (LC) (TRGC)) for the same reason as PCV: a timed mode is purely mandatory, so an assist-control code misstates it. Mapped to CMV-PC as the closest mandatory pressure-controlled mode; the fixed timing is not separately coded."

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
* group[=].element[=].target[+].code = #475162
* group[=].element[=].target[=].display = "MDC_VENT_MODE_ISO_CSV_PS_6ACAP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-09 from 184353, which denotes spontaneous respiration without mechanical support and therefore does not describe the pressure-supported S mode. 475162 carries no mandatory backup rate, which matches it."
