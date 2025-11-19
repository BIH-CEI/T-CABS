Profile: T_CABS_Device_VMD_Beatmungsgeraet
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/VmdDevice
Id: t-cabs-device-vmd-beatmungsgeraet
Title: "T-CABS Device VMD Ventilator"
Description: "Profile representing a virtual subsystem or module"

* parent only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: beispiel-vmd-breas-ahi
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD BREAS AHI Module"
Description: "Example of a virtual AHI module of a BREAS ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-AHI-001"
* type.coding = $IEEE-11073#69634 "MDC_DEV_VMD" 
* deviceName.name = "Vivo45 AHI Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-vmd-breas-amv
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD BREAS AMV Module"
Description: "Example of a virtual AMV module of a BREAS ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-AMV-001"
* type.coding = $IEEE-11073#69634 "MDC_DEV_VMD"
* deviceName.name = "Vivo45 AMV Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-vmd-resmed-atemfrequenz
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD ResMed Respiratory Rate Module"
Description: "Example of a virtual respiratory rate module of a ResMed ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-ATEMFREQ-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Stellar150 Atemfrequenz Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-resmed-leckage
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD ResMed Leakage Module"
Description: "Example of a virtual leakage module of a ResMed ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-LECKAGE-001"
* type.coding = $IEEE-11073#69634 "MDC_DEV_VMD"
* deviceName.name = "Stellar150 Leckage Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-loewenstein-peep
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD Löwenstein PEEP Module"
Description: "Example of a virtual PEEP module of a Löwenstein ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-LOEW-PEEP-001"
* type.coding = $IEEE-11073#69706 "MDC_DEV_ANALY_PRESS_AWAY_VMD"
* deviceName.name = "Prisma VENT30 PEEP Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-vmd-loewenstein-triggeredbreaths
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD Löwenstein TriggeredBreaths Module"
Description: "Example of a virtual TriggeredBreaths module of a Löwenstein ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-LOEW-TRIG-001"
* type.coding = $IEEE-11073#70998 "MDC_DEV_ANALY_BREATH_PATTERN_VMD"
* deviceName.name = "Prisma VENT30 TriggeredBreaths Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-vmd-loewenstein-ti
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD Löwenstein TI Module"
Description: "Example of a virtual TI module of a Löwenstein ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-LOEW-TI-001"
* type.coding = $IEEE-11073#69634 "MDC_DEV_VMD"
* deviceName.name = "PrismaVent TI Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-vmd-resmed-atemzeit
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD ResMed Respiratory Time Ratio Module"
Description: "Example of a virtual respiratory time ratio module of a ResMed ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-ATEMZEIT-001"
* type.coding = $IEEE-11073#69634 "MDC_DEV_VMD"
* deviceName.name = "Stellar150 Atemzeitverhältnis Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-resmed-druck
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD ResMed Pressure Min/Max Module"
Description: "Example of a virtual pressure min/max module of a ResMed ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-DRUCK-001"
* type.coding = $IEEE-11073#69866 "MDC_DEV_METER_PRESS_LUNG_VMD"
* deviceName.name = "Stellar150 Druck Min/Max Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-breas-ipap
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD BREAS IPAP Module"
Description: "Example of a virtual IPAP module of a BREAS ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-IPAP-001"
* type.coding = $IEEE-11073#69634 "MDC_DEV_VMD"
* deviceName.name = "Vivo45 IPAP Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-vmd-breas-targetvolume
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Example VMD BREAS Target Volume Module"
Description: "Example of a virtual target volume module of a BREAS ventilator"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-TGTVOL-001"
* type.coding = $IEEE-11073#70010 "MDC_DEV_REGUL_PRESS_LUNG_VMD"
* deviceName.name = "Vivo45 Target Volume Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)