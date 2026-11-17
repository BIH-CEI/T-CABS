CodeSystem: T_CABS_CodeSystem_VentilationParameter
Id: t-cabs-codesystem-ventilation-parameter
Title: "T-CABS Ventilation Parameter CodeSystem"
Description: "T-CABS-specific ventilation parameter codes for concepts not covered by IEEE 11073 or LOINC."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #spont-breath-percent "Spontaneous Breath Percentage" "Proportion of patient-triggered breaths within a measurement period, expressed as a percentage. IEEE 11073 codes breath types as counts, rates and durations (MDC_VENT_RESP_BTSD_*) but has no proportional variant; MDC_RATIO does not cover it either."
* #mandatory-breath-percent "Mandatory Breath Percentage" "Proportion of ventilator-triggered (mandatory) breaths within a measurement period, expressed as a percentage. Complement of spont-breath-percent; reported in this form by Löwenstein devices."
* #usage-duration "Ventilator Usage Duration" "Time during which the ventilator delivered therapy to the patient within the reporting period of the observation, e.g. one session, one day or a summary period. IEEE 11073 provides a usage time only for sleep apnoea therapy equipment."
