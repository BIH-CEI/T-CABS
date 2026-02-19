This page documents the version history and changes of the T-CABS Implementation Guide.

### Version History

| Version | Date | Status | Description |
|---------|------|--------|-------------|
| 0.1.0 | TBD | Draft | Initial Draft Release (planned) |

---

### Version 0.1.0 (Draft) - Planned

**Initial Draft Release**

This is the first published version of the T-CABS Implementation Guide, developed as part of the T-CABS project (Telemedicine Center for Out-of-Hospital Ventilation and Oxygen Therapy) at the Berlin Institute of Health at Charit&eacute;.

#### Profiles (33 StructureDefinitions)

**Cross-Domain (8 profiles):**
- Patient, Practitioner, PractitionerRole, Organization
- Encounter (Telemedizinische Visite), DiagnosticReport (Visitenbefund)
- Group (Patientengruppe), Procedure (Beatmung)

**Ventilation Data (15 profiles):**
- Device hierarchy based on IEEE 11073 / PoCD: MDS, VMD, Channel, DeviceMetric
- 11 ventilation parameters: AHI, AMV, Respiratory Rate (ventilated), Inspiratory/Expiratory Time Ratio, Pressure Min/Max, IPAP, Leakage, PEEP, Target Volume, Inspiratory Time (TI), Triggered Breaths

**Vital Data (10 profiles):**
- Device profiles based on PHD/PHG standards
- 9 vital parameters: Arterial SpO2, Respiratory Rate, Arterial Blood Pressure, BMI, FEF 25-75%, FEV1, FEV6, FEV1/FEV6, Walking Distance, Grip Strength, Heart Rate, Body Weight, Body Temperature

#### Examples (71 validated instances)

- Complete clinical workflow: Patient &rarr; Devices &rarr; Observations &rarr; Encounter &rarr; DiagnosticReport
- Manufacturer-specific device examples for BREAS, ResMed, and L&ouml;wenstein
- Vital parameter examples with Doccla telehealth platform references

#### Terminologies (4 ValueSets)

- Ventilation Form, Ventilation Mode, Ventilation Parameters, Vital Parameters

#### Standards

- FHIR R4 (4.0.1)
- IEEE 11073-10101 (Medical Device Communication)
- HL7 Point-of-Care Devices (PoCD) IG 0.3.0
- HL7 Personal Health Devices (PHD) IG 1.1.0
- MII Kerndatensatz (Person 2025.0.0, Fall 2025.0.0)
- Deutsche Basisprofile R4 1.5.4

#### Known Limitations

- No CapabilityStatement defined yet
- No security/authorization section (OAuth2/SMART on FHIR)
- No Provenance resources included
- Identifier strategy not yet formally documented
