Diese Seite zeigt die FHIR-Profilbeziehungen der **Vitaldaten**-Domäne von T-CABS. Das Diagramm umfasst die Personal-Health-Devices (PHD/PHG), die abstrakten Observation-Profile sowie alle 13 spezifischen Vitalparameter-Profile mit ihrer Vererbungshierarchie und den Referenzen zu Patient und Organisation.

### UML-Diagramm Vitaldaten

Das folgende PlantUML-Diagramm zeigt alle T-CABS Vitaldaten-Profile mit ihren Vererbungshierarchien und Referenzen:

{% include img.html img="T-CABS_Vital_UML.svg" %}

**Download UML-Diagramm:**
- [Download SVG-Format](T-CABS_Vital_UML.svg)

### Cross-Domain Entitäten

Patient und Organisation sind die einzigen domänenübergreifenden Profile, die aus dieser Domäne referenziert werden.

- **Patient** ist Subject jeder Vitalparameter-Observation und wird über `Device.patient` von PHD- und PHG-Devices referenziert.
- **Organisation** erscheint als Device-Owner (`Device.owner`) und als `managingOrganization` des Patienten.

Alle übrigen domänenübergreifenden Profile (Encounter, DiagnosticReport, Practitioner, PractitionerRole, Group) werden in dieser Domäne nicht verwendet.
