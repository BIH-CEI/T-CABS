Profile: T_CABS_Device_Channel_Beatmungsgeraet
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/ChannelDevice
Id: t-cabs-device-channel-beatmungsgeraet
Title: "T-CABS Device Channel Beatmungsgeraet"
Description: "Profil das eine Channel darstellt, zur Gruppierung von DeviceMetrics"

* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"

* parent only Reference(T_CABS_Device_VMD_Beatmungsgeraet)

Instance: beispiel-channel-breas-ahi
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel BREAS AHI"
Description: "Beispiel für einen AHI-Channel zur Gruppierung von AHI-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-AHI-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "AHI Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-ahi)

Instance: beispiel-channel-breas-amv
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel BREAS AMV"
Description: "Beispiel für einen AMV-Channel zur Gruppierung von AMV-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-AMV-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "AMV Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-amv)

Instance: beispiel-channel-resmed-atemfrequenz
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel ResMed Atemfrequenz"
Description: "Beispiel für einen Atemfrequenz-Channel zur Gruppierung von Atemfrequenz-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-ATEMFREQ-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "Atemfrequenz Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-atemfrequenz)

Instance: beispiel-channel-resmed-leckage
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel ResMed Leckage"
Description: "Beispiel für einen Leckage-Channel zur Gruppierung von Leckage-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-LECKAGE-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "Leckage Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-leckage)

Instance: beispiel-channel-loewenstein-peep
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel Löwenstein PEEP"
Description: "Beispiel für einen PEEP-Channel zur Gruppierung von PEEP-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-LOEW-PEEP-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "PEEP Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-loewenstein-peep)

Instance: beispiel-channel-loewenstein-triggeredbreaths
InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel Löwenstein TriggeredBreaths"
Description: "Beispiel für einen TriggeredBreaths-Channel zur Gruppierung von TriggeredBreaths-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-LOEW-TRIG-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "TriggeredBreaths Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-loewenstein-triggeredbreaths)

Instance: beispiel-channel-loewenstein-ti
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel Löwenstein TI"
Description: "Beispiel für einen TI-Channel zur Gruppierung von TI-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-LOEW-TI-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "TI Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-loewenstein-ti)

Instance: beispiel-channel-resmed-atemzeit
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel ResMed Atemzeitverhältnis"
Description: "Beispiel für einen Atemzeitverhältnis-Channel zur Gruppierung von Atemzeitverhältnis-Berechnungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-ATEMZEIT-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "Atemzeitverhältnis Calculation Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-atemzeit)

Instance: beispiel-channel-resmed-druck
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel ResMed Druck Min/Max"
Description: "Beispiel für einen Druck Min/Max-Channel zur Gruppierung von Druck-Messungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-RESMED-DRUCK-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "Druck Min/Max Measurement Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-resmed-druck)

Instance: beispiel-channel-breas-ipap
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel BREAS IPAP"
Description: "Beispiel für einen IPAP-Channel zur Gruppierung von IPAP-Einstellungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-IPAP-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "IPAP Setting Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-ipap)

Instance: beispiel-channel-breas-targetvolume
 InstanceOf: T_CABS_Device_Channel_Beatmungsgeraet
Usage: #example
Title: "Beispiel Channel BREAS Target Volume"
Description: "Beispiel für einen Target Volume-Channel zur Gruppierung von Target Volume-Einstellungen"
* identifier.system = "http://tcabs.example.org/device-channel"
* identifier.value = "CHAN-BREAS-TGTVOL-001"
* type.coding = $IEEE-11073#70003 "MDC_DEV_SYS_PT_VENT_CHAN"
* deviceName.name = "Target Volume Setting Channel"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-vmd-breas-targetvolume)
