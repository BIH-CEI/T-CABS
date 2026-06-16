Profile: T_CABS_DeviceAlert_Event
Parent: T_CABS_DeviceAlert
Id: t-cabs-device-alert-event
Title: "T-CABS DeviceAlert Event Alarm"
Description: "Abstract profile for event-based alarms (Specific-event pattern): a discrete event is detected (e.g. apnea, disconnection, rebreathing). The alert carries a specific IEEE 11073 (or T-CABS) event code as its value and — unlike a limit alarm — does not require an alertDerivedFrom reference to a threshold-crossing Observation. Concrete profiles fix the specific code, the alarm type, the priority and the detecting device."

* ^abstract = true
* extension[alertCode] 1..1 MS