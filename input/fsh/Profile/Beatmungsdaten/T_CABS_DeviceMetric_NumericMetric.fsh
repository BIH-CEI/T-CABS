Profile: T_CABS_DeviceMetric_NumericMetric
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/NumericDeviceMetric
Id: t-cabs-devicemetric-numericmetric
Title: "T-CABS DeviceMetric NumericMetric"
Description: "Profil welches eine numerische Messung, Berechnung oder Einstellung darstellt"
* category ^short = "Messung oder Einstellung"

* parent only Reference(T_CABS_Device_Channel_Beatmungsgeraet)

Instance: beispiel-devicemetric-breas-ahi
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric BREAS AHI"
Description: "Beispiel für eine DeviceMetric zur AHI-Berechnung eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-BREAS-AHI-001"
* type = $IEEE-11073#8410792 "MDC_SABTE_AHI_TOTAL"
* unit = $UCUM#{score} "{score}"
* operationalStatus = #on
* color = #green
* category = #calculation
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 1
* measurementPeriod.repeat.periodUnit = #h
* calibration.type = #offset
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-breas)
* parent = Reference(Device/beispiel-channel-breas-ahi)

Instance: beispiel-devicemetric-breas-amv
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric BREAS AMV"
Description: "Beispiel für eine DeviceMetric zur AMV-Messung eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-BREAS-AMV-001"
* type = $IEEE-11073#151996 "MDC_VENT_VOL_MINUTE"
* unit = $UCUM#L/min "L/min"
* operationalStatus = #on
* color = #blue
* category = #measurement
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 10
* measurementPeriod.repeat.periodUnit = #s
* calibration.type = #two-point
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-breas)
* parent = Reference(Device/beispiel-channel-breas-amv)

Instance: beispiel-devicemetric-resmed-atemfrequenz
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric ResMed Atemfrequenz"
Description: "Beispiel für eine DeviceMetric zur Atemfrequenz-Messung eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-RESMED-ATEMFREQ-001"
* type = $IEEE-11073#151586 "MDC_VENT_RESP_RATE"
* unit = $UCUM#/min "/min"
* operationalStatus = #on
* color = #cyan
* category = #measurement
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 1
* measurementPeriod.repeat.periodUnit = #min
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-resmed)
* parent = Reference(Device/beispiel-channel-resmed-atemfrequenz)

Instance: beispiel-devicemetric-resmed-leckage
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric ResMed Leckage"
Description: "Beispiel für eine DeviceMetric zur Leckage-Messung eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-RESMED-LECKAGE-001"
* type = $IEEE-11073#152432 "MDC_VENT_VOL_LEAK"
* unit = $UCUM#L/min "L/min"
* operationalStatus = #on
* color = #red
* category = #measurement
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 5
* measurementPeriod.repeat.periodUnit = #s
* calibration.type = #two-point
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-resmed)
* parent = Reference(Device/beispiel-channel-resmed-leckage)

Instance: beispiel-devicemetric-loewenstein-peep
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric Löwenstein PEEP"
Description: "Beispiel für eine DeviceMetric zur PEEP-Messung eines Löwenstein Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-LOEW-PEEP-001"
* type = $IEEE-11073#152720 "MDC_VENT_PRESS_AWAY_DELTA"
* unit = $UCUM#mbar "mbar"
* operationalStatus = #on
* color = #magenta
* category = #calculation
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 1
* measurementPeriod.repeat.periodUnit = #min
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-loewenstein)
* parent = Reference(Device/beispiel-channel-loewenstein-peep)

Instance: beispiel-devicemetric-loewenstein-triggeredbreaths
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric Löwenstein TriggeredBreaths"
Description: "Beispiel für eine DeviceMetric zur TriggeredBreaths-Messung eines Löwenstein Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-LOEW-TRIG-001"
* type = $IEEE-11073#152498 "MDC_VENT_RESP_BTSD_P_RATE"
* unit = $UCUM#% "%"
* operationalStatus = #on
* color = #yellow
* category = #measurement
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 1
* measurementPeriod.repeat.periodUnit = #min
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-loewenstein)
* parent = Reference(Device/beispiel-channel-loewenstein-triggeredbreaths)

Instance: beispiel-devicemetric-loewenstein-ti
 InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric Löwenstein TI"
Description: "Beispiel für eine DeviceMetric zur TI-Messung (Inspirationszeit) eines Löwenstein Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-LOEW-TI-001"
* type = $IEEE-11073#152416 "MDC_VENT_TIME_PD_INSP"
* unit = $UCUM#s "s"
* operationalStatus = #on
* color = #orange
* category = #measurement
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 1
* measurementPeriod.repeat.periodUnit = #s
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-loewenstein)
* parent = Reference(Device/beispiel-channel-loewenstein-ti)

Instance: beispiel-devicemetric-resmed-atemzeit
 InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric ResMed Atemzeitverhältnis"
Description: "Beispiel für eine DeviceMetric zur Atemzeitverhältnis-Berechnung eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-RESMED-ATEMZEIT-001"
* type = $IEEE-11073#153500 "MDC_TIME_PD_INSP_NORMALIZED_HF"
* unit = $UCUM#% "%"
* operationalStatus = #on
* color = #purple
* category = #calculation
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 15
* measurementPeriod.repeat.periodUnit = #s
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-resmed)
* parent = Reference(Device/beispiel-channel-resmed-atemzeit)

Instance: beispiel-devicemetric-resmed-druck
 InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric ResMed Druck Min/Max"
Description: "Beispiel für eine DeviceMetric zur Druck Min/Max-Messung eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-RESMED-DRUCK-001"
* type = $IEEE-11073#151792 "MDC_PRESS_AWAY"
* unit = $UCUM#mbar "mbar"
* operationalStatus = #on
* color = #brown
* category = #measurement
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 30
* measurementPeriod.repeat.periodUnit = #s
* calibration.type = #two-point
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-resmed)
* parent = Reference(Device/beispiel-channel-resmed-druck)

Instance: beispiel-devicemetric-breas-ipap
 InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric BREAS IPAP"
Description: "Beispiel für eine DeviceMetric zur IPAP-Einstellung eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-BREAS-IPAP-001"
* type = $IEEE-11073#8410976 "MDC_SABTE_PRESS_IPAP_SET"
* unit = $UCUM#mbar "mbar"
* operationalStatus = #on
* color = #lime
* category = #setting
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 5
* measurementPeriod.repeat.periodUnit = #min
* calibration.type = #offset
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-breas)
* parent = Reference(Device/beispiel-channel-breas-ipap)

Instance: beispiel-devicemetric-breas-targetvolume
 InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Beispiel DeviceMetric BREAS Target Volume"
Description: "Beispiel für eine DeviceMetric zur Target Volume-Einstellung eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-BREAS-TGTVOL-001"
* type = $IEEE-11073#153212 "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* unit = $UCUM#mL "mL"
* operationalStatus = #on
* color = #pink
* category = #setting
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 10
* measurementPeriod.repeat.periodUnit = #min
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-breas)
* parent = Reference(Device/beispiel-channel-breas-targetvolume)