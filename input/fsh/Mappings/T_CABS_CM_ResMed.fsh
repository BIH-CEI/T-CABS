// ============================================================================
// ConceptMap: ResMed  → IEEE 11073
// ============================================================================

Instance: t-cabs-cm-resmed-to-ieee11073
InstanceOf: ConceptMap
Usage: #definition
* name = "ResMedToIEEE11073"
* title = "ResMed API to IEEE 11073 Mapping"
* description = "Maps ResMed parameter codes to IEEE 11073-10101 nomenclature codes used in T-CABS ventilation profiles. Source parameters come from clinicalMetrics, set (device settings), usage, and respEvents objects."
* status = #draft
* experimental = false

* group[0].source = "https://bih-cei.github.io/T-CABS/CodeSystem/resmed-avx"
* group[=].target = "urn:iso:std:iso:11073:10101"

// ---- Clinical Metrics (clinicalMetrics.*) ----

* group[=].element[0].code = #respRate.50
* group[=].element[=].display = "Median respiratory rate"
* group[=].element[=].target[0].code = #151586
* group[=].element[=].target[=].display = "MDC_VENT_RESP_RATE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — the measured rate also includes patient-triggered breaths, not only the set minimum). Code kept. clinicalMetrics.respRate.50, unit: breaths/min. Percentiles available: .5, .50, .95, .max. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet"

* group[=].element[+].code = #minuteVent.50
* group[=].element[=].display = "Median minute ventilation"
* group[=].element[=].target[0].code = #151996
* group[=].element[=].target[=].display = "MDC_VENT_VOL_MINUTE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. clinicalMetrics.minuteVent.50, unit: L/min. Percentiles available: .5, .50, .95, .max. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-amv"

* group[=].element[+].code = #leak.50
* group[=].element[=].display = "Median leak"
* group[=].element[=].target[0].code = #152432
* group[=].element[=].target[=].display = "MDC_VENT_VOL_LEAK"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. clinicalMetrics.leak.50, unit: L/s (NOTE: T-CABS uses L/min — unit conversion required). Percentiles: .5, .50, .95, .max. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-leckage"

* group[=].element[+].code = #spontTriggBreaths
* group[=].element[=].display = "Percentage of spontaneous triggered breaths"
* group[=].element[=].target[0].code = #152538
* group[=].element[=].target[=].display = "MDC_VENT_RESP_BTSD_PS_RATE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (2/4 consensus). Code corrected: 152498→152538. clinicalMetrics.spontTriggBreaths, unit: %. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-triggeredbreaths"

* group[=].element[+].code = #tgtIPAP.50
* group[=].element[=].display = "Median target IPAP"
* group[=].element[=].target[0].code = #8410976
* group[=].element[=].target[=].display = "MDC_SABTE_PRESS_IPAP_SET"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. clinicalMetrics.tgtIPAP.50, unit: cmH2O. Also available: peakInspiratoryPressure.50. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap"

* group[=].element[+].code = #tgtEPAP.50
* group[=].element[=].display = "Median target EPAP"
* group[=].element[=].target[0].code = #151976
* group[=].element[=].target[=].display = "MDC_VENT_PRESS_AWAY_END_EXP_POS"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (3/4 consensus). Code corrected: 152720→151976. clinicalMetrics.tgtEPAP.50, unit: cmH2O. Also available: endExpiratoryPressure.50. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-peep"

* group[=].element[+].code = #ieRatio.50
* group[=].element[=].display = "Median I:E ratio"
* group[=].element[=].target[0].code = #151832
* group[=].element[=].target[=].display = "MDC_RATIO_IE"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (3/4 consensus). Code corrected: 153500→151832. clinicalMetrics.ieRatio.50, unit: ratio. ResMed reports I:E ratio; IEEE target is Ti/Ttot (normalized). Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemzeitverhaeltnis"

* group[=].element[+].code = #tidalVol.50
* group[=].element[=].display = "Median tidal volume"
* group[=].element[=].target[0].code = #153212
* group[=].element[=].target[=].display = "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. clinicalMetrics.tidalVol.50, unit: L (NOTE: T-CABS uses mL — unit conversion required). IEEE target is target/auto tidal volume. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"

* group[=].element[+].code = #AHI
* group[=].element[=].display = "Apnea-Hypopnea Index"
* group[=].element[=].target[0].code = #8410792
* group[=].element[=].target[=].display = "MDC_SABTE_AHI_TOTAL"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. respEvents.AHI, unit: events/hour. Additional indices available: HI, AI, OAI, CAI, UAI, ODI, CSR, RERA. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ahi"

// ---- Device Settings (set.*) ----

* group[=].element[+].code = #set.IPAP
* group[=].element[=].display = "IPAP setting"
* group[=].element[=].target[0].code = #8410976
* group[=].element[=].target[=].display = "MDC_SABTE_PRESS_IPAP_SET"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. set.IPAP, unit: cmH2O. Also: set.maxIPAP. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap"

* group[=].element[+].code = #set.EPAP
* group[=].element[=].display = "EPAP setting"
* group[=].element[=].target[0].code = #151976
* group[=].element[=].target[=].display = "MDC_VENT_PRESS_AWAY_END_EXP_POS"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (3/4 consensus). Code corrected: 152720→151976. set.EPAP, unit: cmH2O. Also: set.minEPAP, set.maxEPAP, set.startEPAP. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-peep"

* group[=].element[+].code = #set.respRate
* group[=].element[=].display = "Respiratory Rate / Backup Rate"
* group[=].element[=].target[0].code = #151586
* group[=].element[=].target[=].display = "MDC_VENT_RESP_RATE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — the measured rate also includes patient-triggered breaths, not only the set minimum). Code kept. set.respRate, unit: breaths/min. Stellar/Astral devices. Also: set.backupRate. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet"

* group[=].element[+].code = #set.Ti
* group[=].element[=].display = "Ti setting"
* group[=].element[=].target[0].code = #152416
* group[=].element[=].target[=].display = "MDC_VENT_TIME_PD_INSP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — IEEE code is restricted to time-cycled ventilation (partial overlap)). Code kept. set.Ti, unit: seconds. Stellar/Astral only. Also: set.tiMin, set.tiMax. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ti"

* group[=].element[+].code = #set.tidalVolume
* group[=].element[=].display = "Tidal Volume setting"
* group[=].element[=].target[0].code = #153212
* group[=].element[=].target[=].display = "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. set.tidalVolume, unit: mL. Also: set.safetyTidalVolume. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"

* group[=].element[+].code = #set.maxPress
* group[=].element[=].display = "Maximum pressure"
* group[=].element[=].target[0].code = #151793
* group[=].element[=].target[=].display = "MDC_PRESS_AWAY_MAX"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 3, another confirmed it as exact — code denotes general airway pressure rather than an explicit max concept). Code kept. set.maxPress, unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-druck-minmax (MaxPress component)"

* group[=].element[+].code = #set.minPress
* group[=].element[=].display = "Minimum pressure"
* group[=].element[=].target[0].code = #151794
* group[=].element[=].target[=].display = "MDC_PRESS_AWAY_MIN"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 3, another confirmed it as exact — code denotes general airway pressure rather than an explicit min concept). Code kept. set.minPress, unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-druck-minmax (MinPress component)"

// ---- Usage Data ----

* group[=].element[+].code = #usage.duration
* group[=].element[=].display = "Usage duration"
* group[=].element[=].target[0].code = #68232
* group[=].element[=].target[=].display = "MDC_ATTR_TIME_HI_RES"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Not reviewed. usage.duration, unit: minutes (per session). Also: totalUsageHoursOnDevice (cumulative hours). Maps to PoCD operating-hours Device extension."
