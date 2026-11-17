// ============================================================================
// ConceptMap: Löwenstein Medical → IEEE 11073
// Source: Datensatztabelle, prisma CLOUD Night Overview, prisma VENT Manuals
// ============================================================================

Instance: t-cabs-cm-loewenstein-to-ieee11073
InstanceOf: ConceptMap
Usage: #definition
* name = "LoewensteinToIEEE11073"
* title = "Löwenstein Prismacloud API to IEEE 11073 Mapping"
* description = "Maps Löwenstein Medical prisma CLOUD API parameter codes (Prisma VENT series) to IEEE 11073-10101 nomenclature codes used in T-CABS ventilation profiles. Parameters from Datensatztabelle and prisma CLOUD Night Overview report documentation."
* status = #draft
* experimental = false

* group[0].source = "https://bih-cei.github.io/T-CABS/CodeSystem/loewenstein-prismacloud"
* group[=].target = "urn:iso:std:iso:11073:10101"

// ---- Therapy Statistics (API fields, confirmed naming convention: camelCase_unit) ----

* group[=].element[0].code = #frequencyMedian_bpm
* group[=].element[=].display = "Respiratory Rate (median)"
* group[=].element[=].target[0].code = #151586
* group[=].element[=].target[=].display = "MDC_VENT_RESP_RATE"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — the measured rate also includes patient-triggered breaths, not only the set minimum). Code kept. Median respiratory frequency, unit: breaths/min. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet Equivalence changed from equivalent to wider on 2026-11-17: the source is a median of the parameter, while the target code denotes the parameter itself; the statistic is not expressed by the code."

* group[=].element[+].code = #minuteVolumeMedian_l_min
* group[=].element[=].display = "Minute Volume (median)"
* group[=].element[=].target[0].code = #151996
* group[=].element[=].target[=].display = "MDC_VENT_VOL_MINUTE"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Median minute volume, unit: L/min. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-amv Equivalence changed from equivalent to wider on 2026-11-17: the source is a median of the parameter, while the target code denotes the parameter itself; the statistic is not expressed by the code."

* group[=].element[+].code = #leakageMedian_liter_min
* group[=].element[=].display = "Leakage (median)"
* group[=].element[=].target[0].code = #152432
* group[=].element[=].target[=].display = "MDC_VENT_VOL_LEAK"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Median leakage, unit: L/min. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-leckage Equivalence changed from equivalent to wider on 2026-11-17: the source is a median of the parameter, while the target code denotes the parameter itself; the statistic is not expressed by the code."


* group[=].element[+].code = #tidalVolumeMedian_ml
* group[=].element[=].display = "Tidal Volume (median)"
* group[=].element[=].target[0].code = #153212
* group[=].element[=].target[=].display = "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Median tidal volume, unit: mL. Night Overview: median per 2-min epoch. IEEE target is target/auto tidal volume. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"

* group[=].element[+].code = #therapyPressureMax_hPa
* group[=].element[=].display = "Therapy Pressure (IPAP)"
* group[=].element[=].target[0].code = #8410976
* group[=].element[=].target[=].display = "MDC_SABTE_PRESS_IPAP_SET"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Therapy pressure (max per epoch), unit: hPa (=cmH2O). Night Overview: CPAP/APAP/EPAP. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap Equivalence changed from equivalent to wider on 2026-11-17: the source is a maximum per epoch, while the target code denotes the parameter itself; the statistic is not expressed by the code."

* group[=].element[+].code = #tiTMedian
* group[=].element[=].display = "Ti/T Ratio (median)"
* group[=].element[=].target[0].code = #151832
* group[=].element[=].target[=].display = "MDC_RATIO_IE"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (3/4 consensus). Code corrected: 153500→151832. Median Ti/T ratio (inspiratory time / total cycle time). Night Overview: median per 2-min epoch. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemzeitverhaeltnis Equivalence changed from equivalent to wider on 2026-11-17: the source is a median of the parameter, while the target code denotes the parameter itself; the statistic is not expressed by the code."

* group[=].element[+].code = #ahi
* group[=].element[=].display = "Apnea-Hypopnea Index"
* group[=].element[=].target[0].code = #8410792
* group[=].element[=].target[=].display = "MDC_SABTE_AHI_TOTAL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. AHI, unit: events/hour. Night Overview event flags: oA (obstructive apnea), cA (central apnea), oH (obstructive hypopnea), cH (central hypopnea), RERA. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ahi"

// ---- Device Settings (prisma VENT30/40/50/50-C) ----

* group[=].element[+].code = #Pinsp
* group[=].element[=].display = "Inspiratory Pressure (Pinsp)"
* group[=].element[=].target[0].code = #8410976
* group[=].element[=].target[=].display = "MDC_SABTE_PRESS_IPAP_SET"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Setting, unit: hPa (=cmH2O). Range: 4-30 (VENT30), 4-40 (VENT40), 4-50 (VENT50). Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap"

* group[=].element[+].code = #PEEP
* group[=].element[=].display = "PEEP / EPAP"
* group[=].element[=].target[0].code = #151976
* group[=].element[=].target[=].display = "MDC_VENT_PRESS_AWAY_END_EXP_POS"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (3/4 consensus). Code corrected: 152720→151976. Setting, unit: hPa (=cmH2O). Range: 4-25. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-peep"

* group[=].element[+].code = #Vt
* group[=].element[=].display = "Target Volume (Vt)"
* group[=].element[=].target[0].code = #153212
* group[=].element[=].target[=].display = "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Setting, unit: mL. Range: 100-2000, increment: 10 mL, precision: +/- 20%. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"

* group[=].element[+].code = #f
* group[=].element[=].display = "Backup Frequency"
* group[=].element[=].target[0].code = #151586
* group[=].element[=].target[=].display = "MDC_VENT_RESP_RATE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — the measured rate also includes patient-triggered breaths, not only the set minimum). Code kept. Setting, unit: /min. Range: 0-60. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet"

* group[=].element[+].code = #Ti
* group[=].element[=].display = "Inspiratory Time (Ti)"
* group[=].element[=].target[0].code = #152416
* group[=].element[=].target[=].display = "MDC_VENT_TIME_PD_INSP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — IEEE code is restricted to time-cycled ventilation (partial overlap)). Code kept. Setting, unit: s. Range: 0.5-4.0, increment: 0.1 s. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ti"

// =============================================================================
// Group 2: Löwenstein → T-CABS ventilation parameter codes
// =============================================================================

* group[+].source = "https://bih-cei.github.io/T-CABS/CodeSystem/loewenstein-prismacloud"
* group[=].target = "https://bih-cei.github.io/T-CABS/CodeSystem/t-cabs-codesystem-ventilation-parameter"

* group[=].element[+].code = #"portionOfMandatoryBreaths_percent"
* group[=].element[=].display = "Mandatory Breaths (%)"
* group[=].element[=].target[0].code = #mandatory-breath-percent
* group[=].element[=].target[=].display = "Mandatory Breath Percentage"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reassigned 2026-09-29 from IEEE 152538 MDC_VENT_RESP_BTSD_PS_RATE. The device reports the proportion of mandatory breaths, which is the complement of the spontaneous proportion; it is therefore mapped to its own concept rather than inverted at mapping level. Unit: %."

* group[=].element[+].code = #"usage_min"
* group[=].element[=].display = "Usage Duration"
* group[=].element[=].target[0].code = #usage-duration
* group[=].element[=].target[=].display = "Ventilator Usage Duration"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Therapy usage time. Unit: min."