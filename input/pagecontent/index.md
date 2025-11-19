The T-CABS (Telemedicine Center for Out-of-Hospital Ventilation and Oxygen Therapy) Implementation Guide defines FHIR R4 profiles and standards for the transmission and exchange of ventilation and vital parameters in home-based ventilation therapy.

### Objective of the Implementation Guide

This IG enables standardized, interoperable transmission of health data from home-based ventilation therapy between different systems and manufacturers. The content selection was defined and specified within CABS. Uniform FHIR profiles are defined for:

- Ventilation parameters from ventilators
- Vital parameters from Personal Health Devices (PHD)  
- Clinical workflows for telemedicine visits

To ensure international interoperability, this guide builds upon existing work. This existing work consists largely of the implementation guides [Point-of-Care Devices (PoCD) FHIR Implementation Guide](https://hl7.org/fhir/uv/pocd/2021Sep/index.html) version 0.3.0 and the [Personal Health Device (PHD) FHIR Implementation Guide](https://hl7.org/fhir/uv/phd/STU1.1/index.html) version 1.1.0, from the [HL7 Working Group Devices](https://confluence.hl7.org/spaces/HCD/overview).

The general profiles in this implementation guide are partially based on MII specifications and/or compatibility with these and other national specifications (ISiK) was aimed for.

Another goal is to build a uniform and manufacturer-independent data basis that creates the prerequisites for interoperable evaluations and the development of predictive models.

### Target Groups

**Primary target groups:**
- Manufacturers of ventilators
- Manufacturers of vital parameter measurement devices

**Secondary target groups:**
- Software developers for healthcare platforms
- System integrators for telemedicine solutions

The example instances are always assigned to specific manufacturers, but this does not represent any content specification or limitation and serves only for exemplary representation.

### Structure of the Implementation Guide
This Implementation Guide is divided into three domains that represent different aspects of telemedicine care in out-of-hospital ventilation:

- Vital Data – Collection and transmission of physiological measurements

- Ventilation Data – Description of device-specific ventilation settings and measurements

- Cross-Domain Profiles – administrative, organizational, and documentation-relevant resources used across all domains

The term "domain" refers to a thematic group of profiles that belong together functionally.

The following sub-items can be accessed via the menu bar:

1. Information Model: Contains a UML diagram of all created T-CABS profiles and their relationships (references) to each other
2. Profiles: Graphical representation of the profiles
3. Examples: Graphical representation of the examples
4. Implementation: Detailed description of the individual specifications within the profiles and their relationships to each other

### T-CABS Project Context

[Project Website](https://t-cabs.charite.de/)

The Telemedicine Center for Out-of-Hospital Ventilation and Oxygen Therapy pursues the overarching project goal of reducing unplanned contacts with the healthcare system, hospital days, ambulatory appointments, medical transports, and thus healthcare costs.

This should be achieved through telemedicine care by:

1. Increasing therapy adherence to ventilation therapy
2. Stabilizing pulmonary function and improving physical condition
3. Increasing quality of life, self-determination, and safety of use in patients
4. Improving cross-sector collaboration and communication
5. Development and testing of diagnostic signatures using machine learning

**Contact:**
- Technical questions or comments: thimo-andre.hoelter[at]charite.de or [Github Issues](https://github.com/BIH-CEI/T-CABS/issues)
- Organizational questions: t-cabs[at]charite.de

{% include img.html img="T-CABS_Logo.png" %}