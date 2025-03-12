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
* about ^definition = "Die eingestellte Grenze des Beatmungsparameters (Observation.device auf Einstellung(DeviceMetric))"

* sender 1..1 MS
* sender only Reference(T_CABS_Device_Beatmungsgeraet)


* payload.contentReference 1.. MS
* payload.contentReference only Reference(SD_MII_ICU_Parameter_Von_Beatmung)
* payload.contentReference ^definition = "Der gemessene Wert des Parameters, der die Grenze überschritten hat ((Observation.device auf Messung(DeviceMetric)))"