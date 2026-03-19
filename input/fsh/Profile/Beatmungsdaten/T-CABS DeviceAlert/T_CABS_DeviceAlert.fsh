Profile: T_CABS_DeviceAlert
Parent: Basic
Id: t-cabs-device-alert
Title: "T-CABS DeviceAlert (R6 Backport)"
Description: "Abstract base profile for device alerts. Backports the FHIR R6 DeviceAlert resource to R4 using Basic as the carrier resource with extensions for all DeviceAlert elements."

* insert DeviceAlertBase
* extension[alertDevice].valueReference only Reference(Device or DeviceMetric)
