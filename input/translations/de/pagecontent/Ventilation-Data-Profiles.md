### Device-Profile

- [Device MDS Beatmungsgerät](StructureDefinition-t-cabs-device-mds-beatmungsgeraet.html)
- [Device VMD Beatmungsgerät](StructureDefinition-t-cabs-device-vmd-beatmungsgeraet.html)
- [Device Channel Beatmungsgerät](StructureDefinition-t-cabs-device-channel-beatmungsgeraet.html)
- [DeviceMetric NumericMetric](StructureDefinition-t-cabs-devicemetric-numericmetric.html)

### Beatmungsparameter-Profile

- [AHI](StructureDefinition-t-cabs-observation-ahi.html)
- [AMV](StructureDefinition-t-cabs-observation-amv.html)
- [Atemfrequenz beatmet](StructureDefinition-t-cabs-observation-atemfrequenz-beatmet.html)
- [Atemzeitverhältnis](StructureDefinition-t-cabs-observation-atemzeitverhaeltnis.html)
- [Druck Min/Max](StructureDefinition-t-cabs-observation-druck-minmax.html)
- [IPAP](StructureDefinition-t-cabs-observation-ipap.html)
- [Leckage](StructureDefinition-t-cabs-observation-leckage.html)
- [PEEP](StructureDefinition-t-cabs-observation-peep.html)
- [Target Volume](StructureDefinition-t-cabs-observation-targetvolume.html)
- [TI](StructureDefinition-t-cabs-observation-ti.html)
- [Triggered Breaths](StructureDefinition-t-cabs-observation-triggeredbreaths.html)

#### Abstrakte Observation Profile

- [Observation Beatmungsparameter](StructureDefinition-t-cabs-observation-beatmungsparameter.html)
- [Observation Beatmungsparameter mit Komponenten](StructureDefinition-t-cabs-observation-beatmungsparametermitkomponenten.html)

### Beatmungsalarm-Profile (DeviceAlert R6 Backport)

FHIR R6 führt [`DeviceAlert`](https://hl7.org/fhir/6.0.0-ballot4/devicealert.html) als eigenständige Ressource ein. Da T-CABS auf FHIR R4 basiert, werden die R6-DeviceAlert-Konzepte als Backport über `Basic` + Extensions modelliert. Details siehe [Implementation](Ventilation-Data-Implementation.html).

- [DeviceAlert Basis (abstrakt)](StructureDefinition-t-cabs-device-alert.html)
- [Druckalarm](StructureDefinition-t-cabs-device-alert-druck.html)
- [Tidalvolumenalarm](StructureDefinition-t-cabs-device-alert-tidalvolumen.html)
- [Minutenvolumenalarm](StructureDefinition-t-cabs-device-alert-minutenvolumen.html)
- [Atemfrequenzalarm](StructureDefinition-t-cabs-device-alert-atemfrequenz.html)
- [Apnoealarm](StructureDefinition-t-cabs-device-alert-apnoe.html)
- [Diskonnektionsalarm](StructureDefinition-t-cabs-device-alert-disconnection.html)
- [Rückatmungsalarm](StructureDefinition-t-cabs-device-alert-rebreathing.html)

### Beatmungsprozedur-Profile

- [Procedure Beatmung](StructureDefinition-t-cabs-procedure-beatmung.html)

