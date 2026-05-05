Das T-CABS-Informationsmodell bildet die konzeptuelle Grundlage für alle FHIR-Profile und deren Beziehungen zueinander. Es ist in drei Hauptdomänen gegliedert: **Cross-Domain-Entitäten** (Patient, Organisation), **Vitaldaten** (Personal-Health-Devices und Parameter) und **Beatmungsdaten** (Geräte, Beatmungs-Procedure, Parameter und Geräte-Alarme).

### UML-Diagramme der Domänen

Die detaillierten UML-Diagramme aller FHIR-Profile mit ihren Vererbungshierarchien und Querverweisen sind nach Domäne aufgeteilt:

- **[Vitaldaten-Informationsmodell](Vital-Data-Model.html)** — Personal-Health-Devices (PHD/PHG), abstrakte Observation-Profile und 13 Vitalparameter-Profile
- **[Beatmungsdaten-Informationsmodell](Ventilation-Data-Model.html)** — IEEE-11073-Device-Hierarchie (MDS → VMD → Channel → DeviceMetric), Beatmungs-Procedure, 11 Beatmungsparameter-Profile und 8 DeviceAlert-Profile (R6-Backport)

Beide Diagramme enthalten **Patient** und **Organisation** als Cross-Domain-Anker. Die übrigen Cross-Domain-Profile (Encounter, DiagnosticReport, Practitioner, PractitionerRole, Group) werden von beiden Domänen gemeinsam genutzt und in den Domänen-Diagrammen nicht direkt dargestellt.

### T-CABS Logical Model

Das folgende Logical Model bietet eine abstrakte Darstellung der T-CABS-Datenstrukturen und macht sie auch für Benutzer zugänglich, die mit den technischen FHIR-Details nicht vertraut sind. Das Modell ist in dieselben drei Hauptdomänen gegliedert: Cross-Domain-Entitäten (Patient, Organisation), Beatmungsdaten (Geräte und Parameter) und Vitaldaten (Personal-Health-Devices und Parameter).

{% include StructureDefinition-t-cabs-logical-model-snapshot.xhtml %}
