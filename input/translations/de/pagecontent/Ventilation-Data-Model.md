Diese Seite zeigt die FHIR-Profilbeziehungen der **Beatmungsdaten**-Domäne von T-CABS. Das Diagramm umfasst die IEEE-11073-Device-Hierarchie (MDS → VMD → Channel → DeviceMetric), die Beatmungs-Procedure, alle 11 spezifischen Beatmungsparameter-Profile sowie die 8 DeviceAlert-Profile (R6-Backport) mit ihrer Vererbungshierarchie und den Referenzen zu Patient und Organisation.

### UML-Diagramm Beatmungsdaten

Das folgende PlantUML-Diagramm zeigt alle T-CABS Beatmungsdaten-Profile mit ihren Vererbungshierarchien und Referenzen:

{% include img.html img="T-CABS_Vent_UML.svg" %}

**Download UML-Diagramm:**
- [Download SVG-Format](T-CABS_Vent_UML.svg)

### Cross-Domain Entitäten

Patient und Organisation sind die einzigen domänenübergreifenden Profile, die aus dieser Domäne referenziert werden.

- **Patient** ist Subject jeder Beatmungs-Observation, jedes DeviceAlerts und der Beatmungs-Procedure. Zusätzlich wird Patient über `Device.patient` vom MDS-Beatmungsgerät referenziert.
- **Organisation** erscheint als Device-Owner (`Device.owner`) des Beatmungsgeräts und als `managingOrganization` des Patienten.

Alle übrigen domänenübergreifenden Profile (Encounter, DiagnosticReport, Practitioner, PractitionerRole, Group) werden in dieser Domäne nicht verwendet.

### DeviceAlert (R6-Backport)

Die DeviceAlert-Profile bilden die FHIR-R6-Ressource `DeviceAlert` auf FHIR R4 ab, indem sie `Basic` als Trägerressource zusammen mit 11 dedizierten Extensions verwenden. Es werden zwei Alarmkategorien unterschieden:

- **Ereignisbasierte Alarme** (Apnoe, Diskonnektion, Rebreathing) verwenden spezifische IEEE-11073-Event-Codes, die den Alarmzustand direkt identifizieren.
- **Grenzwertüberschreitungs-Alarme** (Druck, Atemfrequenz, Tidalvolumen, Minutenvolumen) verwenden die generischen IEEE-11073-Codes `MDC_EVT_HI` / `MDC_EVT_LO` zusammen mit einer verpflichtenden `alertDerivedFrom`-Referenz auf die Observation, die den Alarm ausgelöst hat.
