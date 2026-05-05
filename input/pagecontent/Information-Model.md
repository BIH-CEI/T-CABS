The T-CABS information model forms the conceptual foundation for all FHIR profiles and their relationships to each other. It is organized into three main domains: **Cross-Domain entities** (Patient, Organization), **Vital Data** (personal health devices and parameters), and **Ventilation Data** (devices, ventilation procedure, parameters, and device alerts).

### Domain UML Diagrams

The detailed UML diagrams of all FHIR profiles, their inheritance hierarchies and cross-references are split by domain:

- **[Vital Data Information Model](Vital-Data-Model.html)** — Personal Health Devices (PHD/PHG), abstract observation profiles, and 13 vital sign profiles
- **[Ventilation Data Information Model](Ventilation-Data-Model.html)** — IEEE 11073 device hierarchy (MDS → VMD → Channel → DeviceMetric), ventilation procedure, 11 ventilation parameter profiles, and 8 DeviceAlert profiles (R6 backport)

Both diagrams include **Patient** and **Organization** as cross-domain anchors. The remaining cross-domain profiles (Encounter, DiagnosticReport, Practitioner, PractitionerRole, Group) are shared by both domains and are not used directly in the domain-level diagrams.

### T-CABS Logical Model

The following logical model provides an abstract representation of the T-CABS data structures, making them accessible to users who are not familiar with FHIR technical details. The model is organized into the same three main domains: Cross-Domain entities (Patient, Organization), Ventilation Data (devices and parameters), and Vital Data (personal health devices and parameters).

{% include StructureDefinition-t-cabs-logical-model-snapshot.xhtml %}
