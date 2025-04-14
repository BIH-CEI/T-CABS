Profile: T_CABS_Communication_AtemfrequenzHighAlarm
Parent: t-cabs-communication-alarm
Id: t-cabs-communication-atemfrequenz-high-alarm
Title: "T-CABS Communication Atemfrequenz high Alarm"
Description: "Profil eines Alarms für eine überschrittenen Atemfrequenz"

* about 1..1 MS
* about only Reference(t-cabs-observation-atemfrequenz-beatmet)
* about ^definition = "Referenz auf die gemessene Atemfrequenz, welche die Alarmgrenze überschritten hat ((Observation.device auf Messung(DeviceMetric)))."


* reasonReference only Reference(t-cabs-observation-atemfrequenz-beatmet)
* reasonReference ^definition = "Referenz auf die eingestellte Atemfrequenz mit Grenzwerten." 