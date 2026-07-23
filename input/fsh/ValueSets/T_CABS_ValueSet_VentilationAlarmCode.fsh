ValueSet: T_CABS_ValueSet_VentilationAlarmCode
Id: t-cabs-valueset-ventilation-alarm-code
Title: "T-CABS Ventilation Alarm Code ValueSet"
Description: "Alarm condition codes for home ventilation device alerts. Uses IEEE 11073 Partition 3 event codes from the FHIR R6 DeviceAlert condition ValueSet. Limit exceedance alarms use generic MDC_EVT_HI/MDC_EVT_LO codes — the specific parameter is identified through the alert's derivedFrom reference."
* ^status = #draft

// IEEE 11073 - Generic limit exceedance events (Partition 3)
* $IEEE-11073#196648 "MDC_EVT_HI"
* $IEEE-11073#196670 "MDC_EVT_LO"

// IEEE 11073 - Specific event codes (Partition 3)
* $IEEE-11073#199680 "MDC_EVT_APNEA"
* $IEEE-11073#197172 "MDC_EVT_VENT_DISCONN"
* $IEEE-11073#197184 "MDC_EVT_FLOW_OBSTRUC"
* $IEEE-11073#198322 "MDC_EVT_LEAK_EXCESSIVE"

// SNOMED CT
* $SCT#405495005 "High airway pressure"
* $SCT#59127000 "Apnea alarm"
* $SCT#416260008 "Ventilator disconnection alarm"

// T-CABS custom (no IEEE/SNOMED available)
* T_CABS_CodeSystem_VentilationAlarm#rebreathing "Rebreathing Alarm"
