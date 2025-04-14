Instance: atemfrequenz-alarm-23
InstanceOf: t-cabs-communication-atemfrequenz-high-alarm
Usage: #example
Title: "Beispiel Alarm (Communication)"
Description: "Beispielhafter Alarm einer erhöhten Atemfrequenz"

* status = #in-progress

* sender = Reference(device-1573)

* subject = Reference(patient-98219fce-813a-41f2-94ff-861d59b89715)

* reasonReference = Reference(atemfrequenz-eingestellt-beispiel-breas) // Einstellung

* about = Reference(atemfrequenz-gemessen-beispiel-breas) // Messung