ValueSet: T_CABS_ValueSet_VentilationAlarmCode
Id: t-cabs-valueset-ventilation-alarm-code
Title: "T-CABS Ventilation Alarm Code ValueSet"
Description: "Alarm codes for home ventilation device alerts from IEEE 11073, SNOMED CT, and T-CABS (rebreathing only)."
* ^status = #draft

// IEEE 11073 - Alarm limit codes
* $IEEE-11073#151793 "MDC_PRESS_AWAY_MAX"
* $IEEE-11073#151794 "MDC_PRESS_AWAY_MIN"
* $IEEE-11073#151869 "MDC_VOL_AWAY_TIDAL_MAX"
* $IEEE-11073#151870 "MDC_VOL_AWAY_TIDAL_MIN"
* $IEEE-11073#151881 "MDC_VOL_MINUTE_AWAY_MAX"
* $IEEE-11073#151882 "MDC_VOL_MINUTE_AWAY_MIN"
* $IEEE-11073#151571 "MDC_AWAY_RESP_RATE_MAX"
* $IEEE-11073#151572 "MDC_AWAY_RESP_RATE_MIN"

// IEEE 11073 - Event codes
* $IEEE-11073#198172 "MDC_EVT_VENT_PRESS_AWAY_HIGH_CONTINUOUS"
* $IEEE-11073#199996 "MDC_EVT_VENT_VOL_INSP_HI"
* $IEEE-11073#198134 "MDC_EVT_VENT_APNEA"
* $IEEE-11073#197172 "MDC_EVT_VENT_DISCONN"

// SNOMED CT
* $SCT#405495005 "High airway pressure (finding)"
* $SCT#468881006 "Airway pressure alarm (situation)"
* $SCT#13621006 "Tidal volume (observable entity)"
* $SCT#698823007 "Inspiratory tidal volume (observable entity)"
* $SCT#250811004 "Minute volume (observable entity)"
* $SCT#86290005 "Respiratory rate (observable entity)"
* $SCT#59127000 "Apnea alarm"
* $SCT#416260008 "Ventilator disconnection alarm"

// T-CABS custom (no IEEE/SNOMED available)
* T_CABS_CodeSystem_VentilationAlarm#rebreathing "Rebreathing Alarm"
