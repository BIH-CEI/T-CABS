Instance: DeviceMetric-Eingestellt-Beispiel-Loewenstein
InstanceOf: $mii-icu-eingestellte-gemessene-parameter-beatmung-devicemetric
Usage: #example
Title: "DeviceMetric_Beispiel_Loewenstein"
Description: "Eingestellter Parameter"
* category = #setting
* type.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(device-1234)


Instance: DeviceMetric-Gemessen-Beispiel-Loewenstein
InstanceOf: $mii-icu-eingestellte-gemessene-parameter-beatmung-devicemetric
Usage: #example
Title: "DeviceMetric_Beispiel_Loewenstein"
Description: "Gemessener Parameter"
* category = #measurement
* type.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(device-1234)