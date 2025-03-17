Profile: T_CABS_Communication_Alarm
Parent: Communication
Id: t-cabs-communication-alarm
Title: "T-CABS Communication Alarm"
Description: "Abstraktes Profil eines eingestellten und/oder gemessenen Alarms eines Beatmungsgerätes"

* category 1..1 MS
* category = #alert

* subject 1..1 MS

* about 1..1 MS
* about only Reference(SD_MII_ICU_Parameter_Von_Beatmung)
* about ^definition = "Der gemessene Wert des Parameters, der die Grenze überschritten hat ((Observation.device auf Messung(DeviceMetric)))."

* sender 1..1 MS
* sender only Reference(T_CABS_Device_Beatmungsgeraet)
* sender ^definition = "Referenz auf das, den Alarm auslösende, Beatmungsgerät."

* reasonReference 0..1 MS
* reasonReference only Reference(SD_MII_ICU_Parameter_Von_Beatmung)
* reasonReference ^definition = "Optionale Referenz auf den eingestellten Wert des Parameters."