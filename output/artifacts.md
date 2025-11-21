# Artifacts Summary - T-CABS Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [T-CABS Device Channel Ventilator](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.md) | Profile representing a channel for grouping DeviceMetrics |
| [T-CABS Device MDS Home Ventilator](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.md) | Profile for a home ventilator device |
| [T-CABS Device PHD](StructureDefinition-t-cabs-device-phd.md) | Profile for a personal health device measuring at the patient |
| [T-CABS Device PHG](StructureDefinition-t-cabs-device-phg.md) | Profile for a tablet used as a gateway device |
| [T-CABS Device VMD Ventilator](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.md) | Profile representing a virtual subsystem or module |
| [T-CABS DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.md) | Profile representing a numeric measurement, calculation, or setting |
| [T-CABS DiagnosticReport Visit Finding](StructureDefinition-t-cabs-diagnosticreport-visitenbefund.md) | Profile for an assessment of the weekly telemedicine visit within the T-CABS study |
| [T-CABS Encounter Contact](StructureDefinition-t-cabs-encounter-kontakt.md) | Profile for a contact with the patient. Compatibility: The T_CABS_Encounter_Kontakt profile aims for compatibility with the ISiKKontaktGesundheitseinrichtung, however it cannot be guaranteed that instances valid against T_CABS_Encounter_Kontakt are also valid against the[ISiKKontaktGesundheitseinrichtung](https://simplifier.net/isik-stufe-5/isikkontaktgesundheitseinrichtung) |
| [T-CABS Function](StructureDefinition-t-cabs-practitioner-funktion.md) | Profile for a function of a person within the T-CABS study |
| [T-CABS Observation AHI](StructureDefinition-t-cabs-observation-ahi.md) | Profile for the Apnea-Hypopnea Index (AHI) - Total number of apnea and hypopnea episodes that occurred during sleep, divided by sleep duration in hours |
| [T-CABS Observation AMV](StructureDefinition-t-cabs-observation-amv.md) | Profile for a alveolar minute volume |
| [T-CABS Observation Arterial Blood Pressure](StructureDefinition-t-cabs-observation-arteriellerblutdruck.md) | Profile for arterial blood pressure. Compatibility: For the profile T_CABS_Observation_ArteriellerBlutdruck, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArteriellerBlutdruck are also valid against the[ISiKBlutdruckArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKBlutdruckSystemischArteriell) |
| [T-CABS Observation BMI](StructureDefinition-t-cabs-observation-bmi.md) | Profile for Body Mass Index (BMI) |
| [T-CABS Observation Body Temperature](StructureDefinition-t-cabs-observation-koerpertemperatur.md) | Profile for body temperature. Compatibility: For the profile T_CABS_Observation_Koerpertemperatur, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Koerpertemperatur are also valid against the[ISiKKoerpertemperatur](https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpertemperatur). |
| [T-CABS Observation Body Weight](StructureDefinition-t-cabs-observation-koerpergewicht.md) | Profile for body weight. Compatibility: For the profile T_CABS_Observation_Koerpergewicht, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Koerpergewicht are also valid against the[ISiKKoerpergewicht](https://gematik.de/fhir/isik/StructureDefinition/ISiKKoerpergewicht). |
| [T-CABS Observation FEF25-75](StructureDefinition-t-cabs-observationfev1fef25-75.md) | Profile for mean forced expiratory flow during exhalation of 25% to 75% of forced vital capacity (FVC) |
| [T-CABS Observation FEV1](StructureDefinition-t-cabs-observationfev1.md) | Profile for Forced Expiratory Volume in 1 Second (FEV1) |
| [T-CABS Observation FEV1/FEV6](StructureDefinition-t-cabs-observationfev1fev6.md) | Profile for FEV1/FEV6 ratio |
| [T-CABS Observation FEV6](StructureDefinition-t-cabs-observationfev6.md) | Profile for Forced Expiratory Volume in 6 Seconds (FEV6) |
| [T-CABS Observation Hand Grip Strength](StructureDefinition-t-cabs-observationhandgriffstaerke.md) | Profile for hand grip strength |
| [T-CABS Observation Heart Rate](StructureDefinition-t-cabs-observation-herzfrequenz.md) | Profile for heart rate. Compatibility: For the profile T_CABS_Observation_Herzfrequenz, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Herzfrequenz are also valid against the[ISiKHerzfrequenz](https://gematik.de/fhir/isik/StructureDefinition/ISiKHerzfrequenz). |
| [T-CABS Observation IPAP](StructureDefinition-t-cabs-observation-ipap.md) | Profile for Inspiratory Positive Airway Pressure (IPAP) |
| [T-CABS Observation Leakage](StructureDefinition-t-cabs-observation-leckage.md) | Profile for leakage rate during ventilation |
| [T-CABS Observation PEEP](StructureDefinition-t-cabs-observation-peep.md) | Profile for Positive End-Expiratory Pressure (PEEP) |
| [T-CABS Observation Pressure MIN/MAX](StructureDefinition-t-cabs-observation-druck-minmax.md) | Profile for minimal and maximal ventilation pressure |
| [T-CABS Observation Respiratory Rate](StructureDefinition-t-cabs-observation-atemfrequenz.md) | Profile for respiratory rate. Compatibility: For the profile T_CABS_Observation_Atemfrequenz, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_Atemfrequenz are also valid against the[ISiKAtemfrequenz](https://gematik.de/fhir/isik/v3/VitalparameterUndKoerpermasze/StructureDefinition/ISiKAtemfrequenz). |
| [T-CABS Observation Respiratory Rate Ventilated](StructureDefinition-t-cabs-observation-atemfrequenz-beatmet.md) | Profile for a respiratory rate of the ventilator |
| [T-CABS Observation Respiratory Time Ratio](StructureDefinition-t-cabs-observation-atemzeitverhaeltnis.md) | Profile for respiratory time ratio |
| [T-CABS Observation SPO2](StructureDefinition-t-cabs-observation-arteriellespo2.md) | Profile for arterial oxygen saturation (SPO2) Compatibility: For the profile T_CABS_Observation_ArterielleSPO2, compatibility with ISiK version 5.1.0 is aimed for, however it cannot be guaranteed that instances that are valid against T_CABS_Observation_ArterielleSPO2 are also valid against the[ISiKSauerstoffsaettigungArteriell](https://gematik.de/fhir/isik/StructureDefinition/ISiKSauerstoffsaettigungArteriell) |
| [T-CABS Observation TI](StructureDefinition-t-cabs-observation-ti.md) | Profile for duration of inspiratory phase |
| [T-CABS Observation Target Volume](StructureDefinition-t-cabs-observation-targetvolume.md) | Profile for the target volume |
| [T-CABS Observation Triggered Breaths](StructureDefinition-t-cabs-observation-triggeredbreaths.md) | Profile for the percentage of spontaneously triggered breaths within a time period |
| [T-CABS Observation Ventilation Parameter (abstract)](StructureDefinition-t-cabs-observation-beatmungsparameter.md) | Abstract profile for ventilation parameters |
| [T-CABS Observation Ventilation Parameter with Components (abstract)](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.md) | Abstract profile for ventilation parameters with multiple values |
| [T-CABS Observation Vital Parameter](StructureDefinition-t-cabs-observation-vitalparameter.md) | Abstract profile for measured vital parameters |
| [T-CABS Observation Vital Parameter with Components](StructureDefinition-t-cabs-observation-vitalparametermitkomponenten.md) | Abstract profile for measured vital parameters with multiple values |
| [T-CABS Observation Walking Distance](StructureDefinition-t-cabs-observation-gehstrecke.md) | Profile for walking distance per day (24 hours) |
| [T-CABS Organization](StructureDefinition-t-cabs-organisation.md) | Profile for an organization associated with the T-CABS study. Compatibility: The T_CABS_Organisation profile aims for compatibility with the ISiKOrganisation version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Organisation are also valid against the[ISiKOrganisation](https://gematik.de/fhir/isik/StructureDefinition/ISiKOrganisation) |
| [T-CABS Patient](StructureDefinition-t-cabs-patient.md) | Profile for a patient in the T-CABS study Compatibility: The T_CABS_Patient profile aims for compatibility with the ISiKPatient version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Patient are also valid against the[ISiKPatient](https://simplifier.net/isik-stufe-5/isikpatient) |
| [T-CABS Patient Group](StructureDefinition-t-cabs-group-patientengruppe.md) | Profile to group patients within the T-CABS study. |
| [T-CABS Person with Function](StructureDefinition-t-cabs-practitioner-personmitfunktion.md) | Profile for an involved person within the T-CABS study. Compatibility: The T_CABS_Practitioner_PersonMitFunktion profile aims for compatibility with ISiK version 5.1.0, however it cannot be guaranteed that instances valid against T_CABS_Practitioner_PersonMitFunktion are also valid against the[ISiKPersonImGesundheitsberuf](https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf) |
| [T-CABS Procedure Ventilation](StructureDefinition-t-cabs-procedure-beatmung.md) | Profile for the ventilation procedure |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [T-CABS ValueSet PHD Type](ValueSet-t-cabs-valueset-phdtyp.md) | This ValueSet contains codes to represent the different PHD measurement devices |
| [T-CABS ValueSet Ventilation Mode](ValueSet-t-cabs-valueset-Beatmungsmodus.md) | This ValueSet contains codes to represent the different ventilation modes |
| [T-CABS ValueSet Ventilation Site](ValueSet-t-cabs-valueset-beatmungsstelle.md) | This ValueSet contains codes to represent the body sites where ventilation is applied |
| [T-CABS ValueSet Ventilation Type](ValueSet-t-cabs-valueset-Beatmungsform.md) | This ValueSet contains codes to represent the different types of ventilation |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS)](Organization-CABS.md) | The Center for Out-of-Hospital Ventilation and Oxygen Therapy (CABS) of the clinic cares for patients with diseases of the lungs, muscles or nervous system who are temporarily or permanently dependent on respiratory support and is part of the clinic's certified weaning center. |
| [Example AHI Measurement BREAS](Observation-Example-AHI-BREAS.md) | Example of an AHI measurement from a BREAS ventilator |
| [Example AMV Measurement BREAS](Observation-Example-AMV-BREAS-gemessen.md) | Example of a measured AMV measurement from a BREAS ventilator |
| [Example Arterial Blood Pressure Measurement](Observation-Example-ArteriellerBlutdruck-Doccla.md) | Example of an arterial blood pressure measurement via Doccla |
| [Example Arterial SPO2 Measurement](Observation-Example-ArterielleSPO2-Doccla.md) | Example of an arterial SPO2 measurement via Doccla |
| [Example BMI Measurement](Observation-Example-BMI-Doccla.md) | Example of a BMI measurement via Doccla |
| [Example Body Temperature Measurement](Observation-Example-Koerpertemperatur-Doccla.md) | Example of a body temperature measurement via Doccla |
| [Example Body Weight Measurement](Observation-Example-Koerpergewicht-Doccla.md) | Example of a body weight measurement via Doccla |
| [Example Channel BREAS AHI](Device-beispiel-channel-breas-ahi.md) | Example of an AHI channel for grouping AHI measurements |
| [Example Channel BREAS AMV](Device-beispiel-channel-breas-amv.md) | Example of an AMV channel for grouping AMV measurements |
| [Example Channel BREAS IPAP](Device-beispiel-channel-breas-ipap.md) | Example of an IPAP channel for grouping IPAP settings |
| [Example Channel BREAS Target Volume](Device-beispiel-channel-breas-targetvolume.md) | Example of a target volume channel for grouping target volume settings |
| [Example Channel Löwenstein PEEP](Device-beispiel-channel-loewenstein-peep.md) | Example of a PEEP channel for grouping PEEP measurements |
| [Example Channel Löwenstein TI](Device-beispiel-channel-loewenstein-ti.md) | Example of a TI channel for grouping TI measurements |
| [Example Channel Löwenstein TriggeredBreaths](Device-beispiel-channel-loewenstein-triggeredbreaths.md) | Example of a TriggeredBreaths channel for grouping TriggeredBreaths measurements |
| [Example Channel ResMed Leakage](Device-beispiel-channel-resmed-leckage.md) | Example of a leakage channel for grouping leakage measurements |
| [Example Channel ResMed Pressure Min/Max](Device-beispiel-channel-resmed-druck.md) | Example of a pressure min/max channel for grouping pressure measurements |
| [Example Channel ResMed Respiratory Rate](Device-beispiel-channel-resmed-atemfrequenz.md) | Example of a respiratory rate channel for grouping respiratory rate measurements |
| [Example Channel ResMed Respiratory Time Ratio](Device-beispiel-channel-resmed-atemzeit.md) | Example of a respiratory time ratio channel for grouping respiratory time ratio calculations |
| [Example DeviceMetric BREAS AHI](DeviceMetric-beispiel-devicemetric-breas-ahi.md) | Example of a DeviceMetric for AHI calculation of a BREAS ventilator |
| [Example DeviceMetric BREAS AMV](DeviceMetric-beispiel-devicemetric-breas-amv.md) | Example of a DeviceMetric for AMV measurement of a BREAS ventilator |
| [Example DeviceMetric BREAS IPAP](DeviceMetric-beispiel-devicemetric-breas-ipap.md) | Example of a DeviceMetric for IPAP setting of a BREAS ventilator |
| [Example DeviceMetric BREAS Target Volume](DeviceMetric-beispiel-devicemetric-breas-targetvolume.md) | Example of a DeviceMetric for target volume setting of a BREAS ventilator |
| [Example DeviceMetric Löwenstein PEEP](DeviceMetric-beispiel-devicemetric-loewenstein-peep.md) | Example of a DeviceMetric for PEEP measurement of a Löwenstein ventilator |
| [Example DeviceMetric Löwenstein TI](DeviceMetric-beispiel-devicemetric-loewenstein-ti.md) | Example of a DeviceMetric for TI measurement (inspiration time) of a Löwenstein ventilator |
| [Example DeviceMetric Löwenstein TriggeredBreaths](DeviceMetric-beispiel-devicemetric-loewenstein-triggeredbreaths.md) | Example of a DeviceMetric for TriggeredBreaths measurement of a Löwenstein ventilator |
| [Example DeviceMetric ResMed Leakage](DeviceMetric-beispiel-devicemetric-resmed-leckage.md) | Example of a DeviceMetric for leakage measurement of a ResMed ventilator |
| [Example DeviceMetric ResMed Pressure Min/Max](DeviceMetric-beispiel-devicemetric-resmed-druck.md) | Example of a DeviceMetric for pressure min/max measurement of a ResMed ventilator |
| [Example DeviceMetric ResMed Respiratory Rate](DeviceMetric-beispiel-devicemetric-resmed-atemfrequenz.md) | Example of a DeviceMetric for respiratory rate measurement of a ResMed ventilator |
| [Example DeviceMetric ResMed Respiratory Time Ratio](DeviceMetric-beispiel-devicemetric-resmed-atemzeit.md) | Example of a DeviceMetric for respiratory time ratio calculation of a ResMed ventilator |
| [Example DiagnosticReport Weekly Visit](DiagnosticReport-Example-DiagnosticReport-Woechentliche-Visite.md) | Example of a visit finding of a weekly telemedicine visit |
| [Example FEF25-75% Measurement](Observation-Example-FEF25-75-Doccla.md) | Example of a FEF25-75% measurement (Mean forced expiratory flow) via Doccla |
| [Example FEV1 Measurement](Observation-Example-FEV1-Doccla.md) | Example of a FEV1 measurement via Doccla |
| [Example FEV1/FEV6 Ratio Measurement](Observation-Example-FEV1-FEV6-Doccla.md) | Example of a FEV1/FEV6 ratio measurement via Doccla |
| [Example FEV6 Measurement](Observation-Example-FEV6-Doccla.md) | Example of a FEV6 measurement (Forced Expiratory Volume in 6 Seconds) via Doccla |
| [Example Hand Grip Strength Measurement](Observation-Example-Handgriffstaerke-Doccla.md) | Example of a hand grip strength measurement via Doccla |
| [Example Heart Rate Measurement](Observation-Example-Herzfrequenz-Doccla.md) | Example of a heart rate measurement via Doccla |
| [Example IPAP BREAS](Observation-Example-IPAP-BREAS.md) | Example of IPAP from a BREAS ventilator |
| [Example Leakage ResMed](Observation-Example-Leckage-ResMed.md) | Example of leakage measurement from a ResMed ventilator |
| [Example PEEP Löwenstein](Observation-Example-PEEP-Loewenstein.md) | Example of PEEP from a Löwenstein ventilator |
| [Example PHD Measurement Device](Device-beispiel-phd-doccla.md) | Example of a Personal Health Device measurement device from Doccla |
| [Example PHG Tablet](Device-beispiel-phg-doccla.md) | Example of a Personal Health Gateway tablet from Doccla |
| [Example Pressure Min/Max ResMed](Observation-Example-DruckMinMax-ResMed.md) | Example of minimal and maximal ventilation pressure from a ResMed device |
| [Example Provider Doccla](Organization-beispiel-provider-doccla.md) | Example for the vital parameter provider Doccla |
| [Example Provider Jochum](Organization-beispiel-provider-jochum.md) | Example for the ventilation equipment provider Jochum |
| [Example Provider Löwenstein](Organization-beispiel-provider-loewenstein.md) | Example for the ventilation equipment provider Löwenstein |
| [Example Provider Vivisol](Organization-beispiel-provider-vivisol.md) | Example for the ventilation equipment provider Vivisol |
| [Example Respiratory Rate Measurement](Observation-Example-Atemfrequenz-Doccla.md) | Example of a respiratory rate measurement via Doccla |
| [Example Respiratory Rate Measurement ResMed](Observation-Example-Atemfrequenz-ResMed-gemessen.md) | Example of a measured respiratory rate from a ResMed ventilator |
| [Example Respiratory Time Ratio ResMed](Observation-Example-Atemzeitverhaeltnis-ResMed.md) | Example of respiratory time ratio from a ResMed ventilator |
| [Example TI Löwenstein](Observation-Example-TI-Loewenstein.md) | Example of inspiration time from a Löwenstein ventilator |
| [Example Target Volume BREAS](Observation-Example-TargetVolume-BREAS.md) | Example of target volume from a BREAS ventilator |
| [Example Telemedicine Visit](Encounter-Example-Encounter-Telemedizinische-Visite.md) | Example of a weekly telemedicine visit of a T-CABS patient |
| [Example Triggered Breaths Löwenstein](Observation-Example-TriggeredBreaths-Loewenstein.md) | Example of triggered breaths from a Löwenstein ventilator |
| [Example VMD BREAS AHI Module](Device-beispiel-vmd-breas-ahi.md) | Example of a virtual AHI module of a BREAS ventilator |
| [Example VMD BREAS AMV Module](Device-beispiel-vmd-breas-amv.md) | Example of a virtual AMV module of a BREAS ventilator |
| [Example VMD BREAS IPAP Module](Device-beispiel-vmd-breas-ipap.md) | Example of a virtual IPAP module of a BREAS ventilator |
| [Example VMD BREAS Target Volume Module](Device-beispiel-vmd-breas-targetvolume.md) | Example of a virtual target volume module of a BREAS ventilator |
| [Example VMD Löwenstein PEEP Module](Device-beispiel-vmd-loewenstein-peep.md) | Example of a virtual PEEP module of a Löwenstein ventilator |
| [Example VMD Löwenstein TI Module](Device-beispiel-vmd-loewenstein-ti.md) | Example of a virtual TI module of a Löwenstein ventilator |
| [Example VMD Löwenstein TriggeredBreaths Module](Device-beispiel-vmd-loewenstein-triggeredbreaths.md) | Example of a virtual TriggeredBreaths module of a Löwenstein ventilator |
| [Example VMD ResMed Leakage Module](Device-beispiel-vmd-resmed-leckage.md) | Example of a virtual leakage module of a ResMed ventilator |
| [Example VMD ResMed Pressure Min/Max Module](Device-beispiel-vmd-resmed-druck.md) | Example of a virtual pressure min/max module of a ResMed ventilator |
| [Example VMD ResMed Respiratory Rate Module](Device-beispiel-vmd-resmed-atemfrequenz.md) | Example of a virtual respiratory rate module of a ResMed ventilator |
| [Example VMD ResMed Respiratory Time Ratio Module](Device-beispiel-vmd-resmed-atemzeit.md) | Example of a virtual respiratory time ratio module of a ResMed ventilator |
| [Example Ventilation BREAS](Procedure-beispiel-beatmung-breas.md) | Example of a ventilation procedure with BREAS device (PCV mode) |
| [Example Ventilation Löwenstein](Procedure-beispiel-beatmung-loewenstein.md) | Example of a ventilation procedure with Löwenstein device (PSV mode) |
| [Example Ventilation ResMed](Procedure-beispiel-beatmung-resmed.md) | Example of a ventilation procedure with ResMed device (CPAP mode) |
| [Example Ventilator BREAS](Device-beispiel-beatmungsgeraet-breas.md) | Example of a BREAS home ventilator |
| [Example Ventilator Löwenstein](Device-beispiel-beatmungsgeraet-loewenstein.md) | Example of a Löwenstein home ventilator |
| [Example Ventilator ResMed](Device-beispiel-beatmungsgeraet-resmed.md) | Example of a ResMed home ventilator |
| [Example Walking Distance Measurement](Observation-Example-Gehstrecke-Doccla.md) | Example of a walking distance measurement via Doccla |
| [T-CABS Patient Example](Patient-tcabs-patient-example.md) | Example patient for the T-CABS project |
| [T-CABS Practitioner Example](Practitioner-tcabs-practitioner-example.md) | Example physician for the T-CABS project |
| [T-CABS PractitionerRole Function Example](PractitionerRole-tcabs-practitioner-role-example.md) | Example of a PractitionerRole for a pulmonologist in the T-CABS study |

