Profile: T_CABS_Communication_AtemfrequenzLowAlarm
Parent: t-cabs-communication-alarm
Id: t-cabs-communication-atemfrequenz-low-alarm
Title: "T-CABS Communication Atemfrequenz low Alarm"
Description: "Profil eines Alarms für eine unterschrittenen Atemfrequenz"

* about 1..1 MS
* about only Reference(t-cabs-observation-atemfrequenz-beatmet)
* about ^definition = "Referenz auf die gemessene Atemfrequenz, welche die Alarmgrenze unterschritten hat ((Observation.device auf Messung(DeviceMetric)))."


* reasonReference only Reference(t-cabs-observation-atemfrequenz-beatmet)
* reasonReference ^definition = "Referenz auf die eingestellte Atemfrequenz mit Grenzwerten." 