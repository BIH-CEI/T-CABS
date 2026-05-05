This page shows the FHIR profile relationships in the **Ventilation Data** domain of T-CABS. The diagram covers the IEEE 11073 device hierarchy (MDS → VMD → Channel → DeviceMetric), the ventilation procedure, all 11 ventilation parameter profiles plus the 8 DeviceAlert profiles (R6 backport), together with their inheritance hierarchies and references to Patient and Organization.

### Ventilation Data UML Diagram

The following PlantUML diagram shows all T-CABS Ventilation Data profiles with their inheritance hierarchies and references:

{% include img.html img="T-CABS_Vent_UML.svg" %}

**Download UML Diagram:**
- [Download SVG format](T-CABS_Vent_UML.svg)

### Cross-Domain entities

Patient and Organization are the only cross-domain profiles referenced from this domain. They appear here as anchors:

- **Patient** is the subject of every ventilation observation, every device alert, and the ventilation procedure. It is also referenced via `Device.patient` from the MDS ventilator.
- **Organization** appears as the device owner (`Device.owner`) of the ventilator and as the patient's `managingOrganization`.

All other cross-domain profiles (Encounter, DiagnosticReport, Practitioner, PractitionerRole, Group) are not used in this domain.

### DeviceAlert (R6 Backport)

The DeviceAlert profiles backport the FHIR R6 `DeviceAlert` resource to FHIR R4 by using `Basic` as carrier resource together with 11 dedicated extensions. Two categories of alerts are distinguished:

- **Event-based alarms** (Apnea, Disconnection, Rebreathing) use specific IEEE 11073 event codes that identify the alarm condition directly.
- **Limit exceedance alarms** (Pressure, Respiratory Rate, Tidal Volume, Minute Volume) use the generic IEEE 11073 codes `MDC_EVT_HI` / `MDC_EVT_LO` together with a mandatory `alertDerivedFrom` reference to the observation that triggered the alarm.
