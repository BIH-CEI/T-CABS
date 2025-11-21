Profile: T_CABS_DeviceMetric_NumericMetric
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/NumericDeviceMetric
Id: t-cabs-devicemetric-numericmetric
Title: "T-CABS DeviceMetric NumericMetric"
Description: "Profile representing a numeric measurement, calculation, or setting"
* category ^short = "Measurement or setting"
* type ^definition = "Coding to identify the parameter"
* source only Reference(T_CABS_Device_MDS_Beatmungsgeraet)
* parent only Reference(T_CABS_Device_Channel_Beatmungsgeraet)

Instance: beispiel-devicemetric-breas-ahi
InstanceOf: T_CABS_DeviceMetric_NumericMetric
Usage: #example
Title: "Example DeviceMetric BREAS AHI"
Description: "Example of a DeviceMetric for AHI calculation of a BREAS ventilator"
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
Title: "Example DeviceMetric BREAS AMV"
Description: "Example of a DeviceMetric for AMV measurement of a BREAS ventilator"
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
Title: "Example DeviceMetric ResMed Respiratory Rate"
Description: "Example of a DeviceMetric for respiratory rate measurement of a ResMed ventilator"
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
Title: "Example DeviceMetric ResMed Leakage"
Description: "Example of a DeviceMetric for leakage measurement of a ResMed ventilator"
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
Title: "Example DeviceMetric Löwenstein PEEP"
Description: "Example of a DeviceMetric for PEEP measurement of a Löwenstein ventilator"
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
Title: "Example DeviceMetric Löwenstein TriggeredBreaths"
Description: "Example of a DeviceMetric for TriggeredBreaths measurement of a Löwenstein ventilator"
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
Title: "Example DeviceMetric Löwenstein TI"
Description: "Example of a DeviceMetric for TI measurement (inspiration time) of a Löwenstein ventilator"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-LOEW-TI-001"
* type = $IEEE-11073#152416 "MDC_VENT_TIME_PD_INSP"
* unit = $UCUM#s "s"
* operationalStatus = #on
* color = #yellow
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
Title: "Example DeviceMetric ResMed Respiratory Time Ratio"
Description: "Example of a DeviceMetric for respiratory time ratio calculation of a ResMed ventilator"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-RESMED-ATEMZEIT-001"
* type = $IEEE-11073#153500 "MDC_TIME_PD_INSP_NORMALIZED_HF"
* unit = $UCUM#% "%"
* operationalStatus = #on
* color = #white
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
Title: "Example DeviceMetric ResMed Pressure Min/Max"
Description: "Example of a DeviceMetric for pressure min/max measurement of a ResMed ventilator"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-RESMED-DRUCK-001"
* type = $IEEE-11073#151792 "MDC_PRESS_AWAY"
* unit = $UCUM#mbar "mbar"
* operationalStatus = #on
* color = #black
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
Title: "Example DeviceMetric BREAS IPAP"
Description: "Example of a DeviceMetric for IPAP setting of a BREAS ventilator"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-BREAS-IPAP-001"
* type = $IEEE-11073#8410976 "MDC_SABTE_PRESS_IPAP_SET"
* unit = $UCUM#mbar "mbar"
* operationalStatus = #on
* color = #cyan
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
Title: "Example DeviceMetric BREAS Target Volume"
Description: "Example of a DeviceMetric for target volume setting of a BREAS ventilator"
* identifier.system = "http://tcabs.example.org/device-metric"
* identifier.value = "DM-BREAS-TGTVOL-001"
* type = $IEEE-11073#153212 "MDC_VENT_VOL_TIDAL_TARGET_AUTO"
* unit = $UCUM#mL "mL"
* operationalStatus = #on
* color = #magenta
* category = #setting
* measurementPeriod.repeat.frequency = 1
* measurementPeriod.repeat.period = 10
* measurementPeriod.repeat.periodUnit = #min
* calibration.type = #gain
* calibration.state = #calibrated
* source = Reference(Device/beispiel-beatmungsgeraet-breas)
* parent = Reference(Device/beispiel-channel-breas-targetvolume)