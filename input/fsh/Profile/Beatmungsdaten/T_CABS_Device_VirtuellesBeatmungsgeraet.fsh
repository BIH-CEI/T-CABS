Profile: T_CABS_Device_VMD_Beatmungsgeraet
Parent: http://hl7.org/fhir/uv/pocd/StructureDefinition/VmdDevice
Id: t-cabs-device-vmd-beatmungsgeraet
Title: "T-CABS Device VMD Beatmungsgeraet"
Description: "Profil welches ein virtuelles Subsystem oder Modul darstellt"

* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"

* parent only Reference(T_CABS_Device_MDS_Beatmungsgeraet)

Instance: beispiel-vmd-breas-ahi
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD BREAS AHI Module"
Description: "Beispiel für ein virtuelles AHI-Modul eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-AHI-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Vivo45 AHI Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-vmd-breas-amv
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD BREAS AMV Module"
Description: "Beispiel für ein virtuelles AMV-Modul eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-AMV-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Vivo45 AMV Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-vmd-resmed-atemfrequenz
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD ResMed Atemfrequenz Module"
Description: "Beispiel für ein virtuelles Atemfrequenz-Modul eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-ATEMFREQ-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Stellar150 Atemfrequenz Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-resmed-leckage
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD ResMed Leckage Module"
Description: "Beispiel für ein virtuelles Leckage-Modul eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-LECKAGE-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Stellar150 Leckage Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-loewenstein-peep
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD Löwenstein PEEP Module"
Description: "Beispiel für ein virtuelles PEEP-Modul eines Löwenstein Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-LOEW-PEEP-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Prisma VENT30 PEEP Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-vmd-loewenstein-triggeredbreaths
InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD Löwenstein TriggeredBreaths Module"
Description: "Beispiel für ein virtuelles TriggeredBreaths-Modul eines Löwenstein Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-LOEW-TRIG-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Prisma VENT30 TriggeredBreaths Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-vmd-loewenstein-ti
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD Löwenstein TI Module"
Description: "Beispiel für ein virtuelles TI-Modul eines Löwenstein Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-LOEW-TI-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "PrismaVent TI Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-loewenstein)

Instance: beispiel-vmd-resmed-atemzeit
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD ResMed Atemzeitverhältnis Module"
Description: "Beispiel für ein virtuelles Atemzeitverhältnis-Modul eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-ATEMZEIT-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Stellar150 Atemzeitverhältnis Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-resmed-druck
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD ResMed Druck Min/Max Module"
Description: "Beispiel für ein virtuelles Druck Min/Max-Modul eines ResMed Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-RESMED-DRUCK-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Stellar150 Druck Min/Max Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-resmed)

Instance: beispiel-vmd-breas-ipap
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD BREAS IPAP Module"
Description: "Beispiel für ein virtuelles IPAP-Modul eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-IPAP-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Vivo45 IPAP Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)

Instance: beispiel-vmd-breas-targetvolume
 InstanceOf: T_CABS_Device_VMD_Beatmungsgeraet
Usage: #example
Title: "Beispiel VMD BREAS Target Volume Module"
Description: "Beispiel für ein virtuelles Target Volume-Modul eines BREAS Beatmungsgeräts"
* identifier.system = "http://tcabs.example.org/device-vmd"
* identifier.value = "VMD-BREAS-TGTVOL-001"
* type.coding = $IEEE-11073#70002 "MDC_DEV_SYS_PT_VENT_VMD"
* deviceName.name = "Vivo45 Target Volume Module"
* deviceName.type = #user-friendly-name
* parent = Reference(Device/beispiel-beatmungsgeraet-breas)