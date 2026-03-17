// ============================================================================
// ConceptMap: BREAS → IEEE 11073
// ============================================================================

Instance: t-cabs-cm-breas-to-ieee11073
InstanceOf: ConceptMap
Usage: #definition
* name = "BREASToIEEE11073"
* title = "BREAS EveryWare API to IEEE 11073 Mapping"
* description = "Maps BREAS Medical EveryWare REST API v1 parameter codes (Vivo 45/50/65 series) to IEEE 11073-10101 nomenclature codes used in T-CABS ventilation profiles. Source parameters come from TreatmentDataDetailDto and RemoteDeviceSettingItemDetailDto schemas."
* status = #draft
* experimental = false

* group[0].source = "https://bih-cei.github.io/T-CABS/CodeSystem/breas-everyware"
* group[=].target = "urn:iso:std:iso:11073:10101"

// ---- Treatment Data (TreatmentDataDetailDto) ----

* group[=].element[0].code = #breathsPerMinute
* group[=].element[=].display = "BPM"
* group[=].element[=].target[0].code = #151586
* group[=].element[=].target[=].display = "MDC_VENT_RESP_RATE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: BPM. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemfrequenz-beatmet"

* group[=].element[+].code = #minuteVolume
* group[=].element[=].display = "Minute Volume"
* group[=].element[=].target[0].code = #151996
* group[=].element[=].target[=].display = "MDC_VENT_VOL_MINUTE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: l. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-amv"

* group[=].element[+].code = #leakage
* group[=].element[=].display = "Leakage"
* group[=].element[=].target[0].code = #152432
* group[=].element[=].target[=].display = "MDC_VENT_VOL_LEAK"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: l/m. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-leckage"

* group[=].element[+].code = #triggeredBreaths
* group[=].element[=].display = "Triggered Breaths"
* group[=].element[=].target[0].code = #152498
* group[=].element[=].target[=].display = "MDC_VENT_RESP_BTSD_P_RATE"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: %. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-triggeredbreaths"

* group[=].element[+].code = #inspiratoryPeakAirwayPressure
* group[=].element[=].display = "IPAP"
* group[=].element[=].target[0].code = #8410976
* group[=].element[=].target[=].display = "MDC_SABTE_PRESS_IPAP_SET"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap"

* group[=].element[+].code = #endExpiratoryPositiveAirwayPressure
* group[=].element[=].display = "EPAP"
* group[=].element[=].target[0].code = #152720
* group[=].element[=].target[=].display = "MDC_VENT_PRESS_AWAY_DELTA"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-peep"

* group[=].element[+].code = #tiOverTtot
* group[=].element[=].display = "TiOverTtot"
* group[=].element[=].target[0].code = #153500
* group[=].element[=].target[=].display = "MDC_TIME_PD_INSP_NORMALIZED_HF"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: %. Ti/Ttot ratio. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-atemzeitverhaeltnis"

* group[=].element[+].code = #tidalVolume
* group[=].element[=].display = "Tidal Volume"
* group[=].element[=].target[0].code = #153212
* group[=].element[=].target[=].display = "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "AggregateDto (min/avg/max), unit: ml. BREAS reports measured tidal volume; IEEE target code is for target/auto tidal volume. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"

// ---- Device Settings (RemoteDeviceSettingItemDetailDto) ----

* group[=].element[+].code = #InspiratoryPressure
* group[=].element[=].display = "Insp. Pressure"
* group[=].element[=].target[0].code = #8410976
* group[=].element[=].target[=].display = "MDC_SABTE_PRESS_IPAP_SET"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Device setting (ID 0), unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ipap"

* group[=].element[+].code = #Peep
* group[=].element[=].display = "PEEP"
* group[=].element[=].target[0].code = #152720
* group[=].element[=].target[=].display = "MDC_VENT_PRESS_AWAY_DELTA"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Device setting (ID 1), unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-peep"

* group[=].element[+].code = #TargetVolume
* group[=].element[=].display = "Target Volume"
* group[=].element[=].target[0].code = #153212
* group[=].element[=].target[=].display = "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Device setting (ID 7), unit: ml. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-targetvolume"

* group[=].element[+].code = #SetInspiratoryTime
* group[=].element[=].display = "Insp. Time"
* group[=].element[=].target[0].code = #152416
* group[=].element[=].target[=].display = "MDC_VENT_TIME_PD_INSP"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Device setting (ID 14), unit: s. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-ti"

* group[=].element[+].code = #MaxInspiratoryPressure
* group[=].element[=].display = "Max Pressure"
* group[=].element[=].target[0].code = #151793
* group[=].element[=].target[=].display = "MDC_PRESS_AWAY_MAX"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Device setting (ID 8), unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-druck-minmax (MaxPress component)"

* group[=].element[+].code = #MinInspiratoryPressure
* group[=].element[=].display = "Min Pressure"
* group[=].element[=].target[0].code = #151794
* group[=].element[=].target[=].display = "MDC_PRESS_AWAY_MIN"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Device setting (ID 9), unit: cmH2O. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-druck-minmax (MinPress component)"

// ---- Usage Data (PatientAverageSummary) ----

* group[=].element[+].code = #cumulativeUsage
* group[=].element[=].display = "Cumulative Usage"
* group[=].element[=].target[0].code = #68232
* group[=].element[=].target[=].display = "MDC_ATTR_TIME_HI_RES"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "PatientAverageSummary.cumulativeUsage. Also: averageUsageForAllDays, averageUsageForDaysUsed. Maps to PoCD operating-hours Device extension."
