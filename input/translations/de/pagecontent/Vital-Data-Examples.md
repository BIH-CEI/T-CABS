Diese Seite enthält Beispiele für Vitalparameter-Messungen und Messgeräte:

### Geräte-Beispiele

#### Personal Health Devices (PHD)

- [PHD Pulsoximeter](Device-beispiel-phd-pulsoximeter.html)
- [PHD Waage](Device-beispiel-phd-waage.html)
- [PHD Handdynamometer](Device-beispiel-phd-dynamometer.html)
- [PHD Blutdruckmessgerät](Device-beispiel-phd-blutdruckmessgeraet.html)
- [PHD Spirometer](Device-beispiel-phd-spirometer.html)
- [PHD Schrittzähler](Device-beispiel-phd-schrittzaehler.html)
- [PHD Peak-Flow-Meter](Device-beispiel-phd-peakflow.html)

#### Personal Health Gateway (PHG)

- [PHG Gateway Doccla](Device-beispiel-phg-doccla.html)

### Vitalparameter-Observation-Beispiele

#### Basis-Vitalwerte
- [Periphere Sauerstoffsättigung (Pulsoxymetrie)](Observation-Example-SPO2-Doccla.html)
- [Arterieller Blutdruck](Observation-Example-ArteriellerBlutdruck-Doccla.html)
- [Atemfrequenz](Observation-Example-Atemfrequenz-Doccla.html)
- [Herzfrequenz](Observation-Example-Herzfrequenz-Doccla.html)
- [Körpertemperatur](Observation-Example-Koerpertemperatur-Doccla.html)

#### Körpermaße
- [BMI](Observation-Example-BMI-Doccla.html)
- [Körpergewicht](Observation-Example-Koerpergewicht-Doccla.html)

#### Lungenfunktionstests
- [FEV1](Observation-Example-FEV1-Doccla.html)
- [FEV6](Observation-Example-FEV6-Doccla.html)
- [FEV1/FEV6](Observation-Example-FEV1-FEV6-Doccla.html)
- [FEF25-75 %](Observation-Example-FEF25-75-Doccla.html)

#### Körperliche Aktivität & Kraft
- [Tägliche Schrittzahl](Observation-Example-TaeglicheSchrittzahl-Doccla.html)
- [Handgriffstärke](Observation-Example-Handgriffstaerke-Doccla.html)

### Transaction-Bundle-Beispiele

Diese Bundles zeigen, wie Vitaldaten als Transaction an einen FHIR-Server übermittelt werden:

- [Vitaldaten Initial](Bundle-Example-Bundle-VitalData-Initial.html) — Erstübermittlung: Patient, Organisation, PHG, PHD-Geräte (Pulsoximeter, Waage) und erste Messungen (alle POST)
- [Vitaldaten Follow-up](Bundle-Example-Bundle-VitalData-FollowUp.html) — Folge-Übermittlung: Patient und Geräte werden aktualisiert (PUT), neue Messungen werden angelegt (POST)
