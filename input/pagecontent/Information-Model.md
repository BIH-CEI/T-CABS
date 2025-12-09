The T-CABS information model forms the conceptual foundation for all FHIR profiles and their relationships to each other. It shows the complete architecture of devices, patients, clinical workflows, and data flows in a clear graphical representation.

### T-CABS UML Diagram

The following PlantUML diagram shows all T-CABS profiles with their inheritance hierarchies and references:

{% include img.html img="T-CABS_UML.svg" %}

**Download UML Diagram:**
- [Download PNG format](T_CABS_UML.png)
- [Download SVG format](T-CABS_UML.svg)

### T-CABS Logical Model

The following logical model provides an abstract representation of the T-CABS data structures, making them accessible to users who are not familiar with FHIR technical details. The model is organized into three main domains: Cross-Domain entities (Patient, Organization), Ventilation Data (devices and parameters), and Vital Data (personal health devices and parameters).

{% include StructureDefinition-t-cabs-logical-model-snapshot.xhtml %}