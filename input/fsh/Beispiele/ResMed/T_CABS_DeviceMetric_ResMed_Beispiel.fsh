Instance: deviceMetric-eingestellt-beispiel-resmed
InstanceOf: $mii-icu-eingestellte-gemessene-parameter-beatmung-devicemetric
Usage: #example
Title: "DeviceMetric_Beispiel_ResMed"
Description: "Eingestellter Parameter"
* category = #setting
* type.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(device-12345)


Instance: deviceMetric-gemessen-beispiel-resmed
InstanceOf: $mii-icu-eingestellte-gemessene-parameter-beatmung-devicemetric
Usage: #example
Title: "DeviceMetric_Beispiel_ResMed"
Description: "Gemessener Parameter"
* category = #measurement
* type.coding = $SCT#40617009 "Artificial ventilation (regime/therapy)"
* source = Reference(device-123455)