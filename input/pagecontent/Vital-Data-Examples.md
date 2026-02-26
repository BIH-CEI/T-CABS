This page contains examples for vital parameter measurements and measurement devices:

### Device Examples

#### Personal Health Devices (PHD)

- [PHD Pulse Oximeter](Device-beispiel-phd-pulsoximeter.html)
- [PHD Scale](Device-beispiel-phd-waage.html)  
- [PHD Hand Dynamometer](Device-beispiel-phd-dynamometer.html)
- [PHD Blood Pressure Monitor](Device-beispiel-phd-blutdruckmessgeraet.html)
- [PHD Spirometer](Device-beispiel-phd-spirometer.html)
- [PHD Step Counter](Device-beispiel-phd-schrittzaehler.html)
- [PHD Peak Flow Meter](Device-beispiel-phd-peakflow.html)

#### Personal Health Gateway (PHG)

- [PHG Device Doccla](Device-beispiel-phg-doccla.html)

### Vital Parameter Observation Examples

#### Basic Vital Signs
- [Arterial SpO2 Doccla](Observation-Example-ArterielleSPO2-Doccla.html)
- [Arterial Blood Pressure Doccla](Observation-Example-ArteriellerBlutdruck-Doccla.html)
- [Respiratory Rate Doccla](Observation-Example-Atemfrequenz-Doccla.html)
- [Heart Rate Doccla](Observation-Example-Herzfrequenz-Doccla.html)
- [Body Temperature Doccla](Observation-Example-Koerpertemperatur-Doccla.html)

#### Body Measurements
- [BMI Doccla](Observation-Example-BMI-Doccla.html)
- [Body Weight Doccla](Observation-Example-Koerpergewicht-Doccla.html)

#### Pulmonary Function Tests
- [FEV1 Doccla](Observation-Example-FEV1-Doccla.html)
- [FEV6 Doccla](Observation-Example-FEV6-Doccla.html)
- [FEV1/FEV6 Ratio Doccla](Observation-Example-FEV1-FEV6-Doccla.html)
- [FEF25-75 Doccla](Observation-Example-FEF25-75-Doccla.html)

#### Physical Activity & Strength
- [Walking Distance Doccla](Observation-Example-Gehstrecke-Doccla.html)
- [Hand Grip Strength Doccla](Observation-Example-Handgriffstaerke-Doccla.html)

### Transaction Bundle Examples

These bundles demonstrate how vital data is submitted to a FHIR server as a transaction:

- [Vital Data Initial](Bundle-Example-Bundle-VitalData-Initial.html) — Initial submission: Patient, Organization, PHG, PHD devices (pulse oximeter, scale), and first measurements (all POST)
- [Vital Data Follow-up](Bundle-Example-Bundle-VitalData-FollowUp.html) — Follow-up submission: Patient and devices are updated (PUT), new measurements are created (POST)