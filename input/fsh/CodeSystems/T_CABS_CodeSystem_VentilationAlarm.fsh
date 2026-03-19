CodeSystem: T_CABS_CodeSystem_VentilationAlarm
Id: t-cabs-codesystem-ventilation-alarm
Title: "T-CABS Ventilation Alarm CodeSystem"
Description: "Alarm codes for home ventilation device alerts. Maps to IEEE 11073-10101 MDC event codes where available."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #pressure-high "Pressure High" "Airway pressure exceeded upper alarm limit"
* #pressure-low "Pressure Low" "Airway pressure fell below lower alarm limit"
* #apnea "Apnea" "No respiratory effort detected within the apnea alarm time"
* #disconnection "Disconnection" "Patient circuit disconnection detected"
* #tidal-volume-high "Tidal Volume High" "Tidal volume exceeded upper alarm limit"
* #tidal-volume-low "Tidal Volume Low" "Tidal volume fell below lower alarm limit"
* #minute-volume-high "Minute Volume High" "Minute volume exceeded upper alarm limit"
* #minute-volume-low "Minute Volume Low" "Minute volume fell below lower alarm limit"
* #respiratory-rate-high "Respiratory Rate High" "Respiratory rate exceeded upper alarm limit"
* #respiratory-rate-low "Respiratory Rate Low" "Respiratory rate fell below lower alarm limit"
* #rebreathing "Rebreathing" "Rebreathing of exhaled gas detected (elevated CO2)"
