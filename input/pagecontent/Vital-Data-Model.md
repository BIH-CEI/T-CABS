This page shows the FHIR profile relationships in the **Vital Data** domain of T-CABS. The diagram covers personal health devices (PHD/PHG), the abstract observation profiles, and all 13 vital sign profiles together with their inheritance hierarchies and references to Patient and Organization.

### Vital Data UML Diagram

The following PlantUML diagram shows all T-CABS Vital Data profiles with their inheritance hierarchies and references:

{% include img.html img="T-CABS_Vital_UML.svg" %}

**Download UML Diagram:**
- [Download SVG format](T-CABS_Vital_UML.svg)

### Cross-Domain entities

Patient and Organization are the only cross-domain profiles referenced from this domain. They appear here as anchors:

- **Patient** is the subject of every vital observation and is referenced via `Device.patient` from PHD and PHG devices.
- **Organization** appears as the device owner (`Device.owner`) and as the patient's `managingOrganization`.

All other cross-domain profiles (Encounter, DiagnosticReport, Practitioner, PractitionerRole, Group) are not used in this domain.
