CodeSystem: T_CABS_CodeSystem_VentilationAlarm
Id: t-cabs-codesystem-ventilation-alarm
Title: "T-CABS Ventilation Alarm CodeSystem"
Description: "T-CABS-specific ventilation alarm codes for concepts not covered by IEEE 11073 or SNOMED CT."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #rebreathing "Rebreathing Alarm" "Rebreathing of exhaled gas detected (elevated CO2 in inspired gas)."
* #obstructive-apnea "Obstructive Apnea Alarm" "Obstructive apnea of the patient detected. IEEE 11073 carries the duration of obstructive apnea as a measurement (MDC_TIME_PD_APNEA_OBSTRUC, Partition 2), but no corresponding Partition 3 event; MDC_EVT_VENT_ENDOTRACH_TUBE_OBSTRUC applies to the endotracheal tube only."
