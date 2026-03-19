### Device Profiles

- [Device MDS Ventilator](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.html)
- [Device VMD Ventilator](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.html)
- [Device Channel Ventilator](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.html)
- [DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.html)

### Ventilation Parameter Profiles

- [AHI](StructureDefinition-t-cabs-observation-ahi.html)
- [AMV](StructureDefinition-t-cabs-observation-amv.html)
- [Respiratory Rate Ventilated](StructureDefinition-t-cabs-observation-atemfrequenz-beatmet.html)
- [Inspiratory Time Ratio](StructureDefinition-t-cabs-observation-atemzeitverhaeltnis.html)
- [Pressure Min/Max](StructureDefinition-t-cabs-observation-druck-minmax.html)
- [IPAP](StructureDefinition-t-cabs-observation-ipap.html)
- [Leakage](StructureDefinition-t-cabs-observation-leckage.html)
- [PEEP](StructureDefinition-t-cabs-observation-peep.html)
- [Target Volume](StructureDefinition-t-cabs-observation-targetvolume.html)
- [TI](StructureDefinition-t-cabs-observation-ti.html)
- [Triggered Breaths](StructureDefinition-t-cabs-observation-triggeredbreaths.html)

#### Abstract Observation Profiles

- [Observation Ventilation Parameters](StructureDefinition-t-cabs-observation-beatmungsparameter.html)
- [Observation Ventilation Parameters with Components](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.html)

### Ventilation Alarm Profiles (DeviceAlert R6 Backport)

FHIR R6 introduces [`DeviceAlert`](https://hl7.org/fhir/6.0.0-ballot4/devicealert.html) as a dedicated resource. See [Implementation](Ventilation-Data-Implementation.html#device-alerts-r6-backport) for details.

- [DeviceAlert Base (abstract)](StructureDefinition-t-cabs-device-alert.html)
- [Pressure Alarm](StructureDefinition-t-cabs-device-alert-druck.html)
- [Tidal Volume Alarm](StructureDefinition-t-cabs-device-alert-tidalvolumen.html)
- [Minute Volume Alarm](StructureDefinition-t-cabs-device-alert-minutenvolumen.html)
- [Respiratory Rate Alarm](StructureDefinition-t-cabs-device-alert-atemfrequenz.html)
- [Apnea Alarm](StructureDefinition-t-cabs-device-alert-apnoe.html)
- [Disconnection Alarm](StructureDefinition-t-cabs-device-alert-disconnection.html)
- [Rebreathing Alarm](StructureDefinition-t-cabs-device-alert-rebreathing.html)

### Ventilation Procedure Profiles

- [Procedure Ventilation](StructureDefinition-t-cabs-procedure-beatmung.html)