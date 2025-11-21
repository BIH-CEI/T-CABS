Profile: T_CABS_Device_Channel_Beatmungsgeraet
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/ChannelDevice
Id: t-cabs-device-channel-beatmungsgeraet
Title: "T-CABS Device Channel Ventilator"
Description: "Profile representing a channel for grouping DeviceMetrics"

* parent only Reference(T_CABS_Device_VMD_Beatmungsgeraet)

Instance: beispiel-channel-breas-ahi
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel BREAS AHI"
Description: "Example of an AHI channel for grouping AHI measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-AHI-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "AHI Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-ahi)

Instance: beispiel-channel-breas-amv
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel BREAS AMV"
Description: "Example of an AMV channel for grouping AMV measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-AMV-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "AMV Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-amv)

Instance: beispiel-channel-resmed-atemfrequenz
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel ResMed Respiratory Rate"
Description: "Example of a respiratory rate channel for grouping respiratory rate measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-ATEMFREQ-001"
* type.coding = $IEEE-11073#69723 "MDC_DEV_ANALY_RESP_RATE_CHAN"
* deviceName.name = "Atemfrequenz Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-atemfrequenz)

Instance: beispiel-channel-resmed-leckage
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel ResMed Leakage"
Description: "Example of a leakage channel for grouping leakage measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-LECKAGE-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "Leckage Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-leckage)

Instance: beispiel-channel-loewenstein-peep
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel Löwenstein PEEP"
Description: "Example of a PEEP channel for grouping PEEP measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-LOEW-PEEP-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "PEEP Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-loewenstein-peep)

Instance: beispiel-channel-loewenstein-triggeredbreaths
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel Löwenstein TriggeredBreaths"
Description: "Example of a TriggeredBreaths channel for grouping TriggeredBreaths measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-LOEW-TRIG-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "TriggeredBreaths Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-loewenstein-triggeredbreaths)

Instance: beispiel-channel-loewenstein-ti
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel Löwenstein TI"
Description: "Example of a TI channel for grouping TI measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-LOEW-TI-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "TI Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-loewenstein-ti)

Instance: beispiel-channel-resmed-atemzeit
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel ResMed Respiratory Time Ratio"
Description: "Example of a respiratory time ratio channel for grouping respiratory time ratio calculations"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-ATEMZEIT-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "Atemzeitverhältnis Calculation Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-atemzeit)

Instance: beispiel-channel-resmed-druck
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel ResMed Pressure Min/Max"
Description: "Example of a pressure min/max channel for grouping pressure measurements"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-DRUCK-001"
* type.coding = $IEEE-11073#69719 "MDC_DEV_ANALY_PRESS_LUNG_CHAN"
* deviceName.name = "Druck Min/Max Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-druck)

Instance: beispiel-channel-breas-ipap
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel BREAS IPAP"
Description: "Example of an IPAP channel for grouping IPAP settings"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-IPAP-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "IPAP Setting Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-ipap)

Instance: beispiel-channel-breas-targetvolume
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Example Channel BREAS Target Volume"
Description: "Example of a target volume channel for grouping target volume settings"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-TGTVOL-001"
* type.coding = $IEEE-11073#69635 "MDC_DEV_CHAN"
* deviceName.name = "Target Volume Setting Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-targetvolume)
