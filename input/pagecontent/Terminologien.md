Diese Seite dokumentiert die spezifischen ValueSets des T-CABS Projekts, die für die Kodierung von Beatmungsformen und Beatmungsmodi verwendet werden.

### ValueSets

#### T-CABS ValueSet Beatmungsform

**Link**: [ValueSet Beatmungsform](ValueSet-t-cabs-valueset-Beatmungsform.html)

**Beschreibung**: Dieses ValueSet enthält SNOMED CT Codes um die verschiedenen Beatmungsformen abzubilden.

**System**: SNOMED CT (`http://snomed.info/sct`)

#### Codes

| Code | Display | Beschreibung |
|------|---------|--------------|
| `428311008` | Non-invasive ventilation (regime/therapy) | Nicht-invasive Beatmung - Beatmung über Maske oder Nasenprongs ohne Intubation |
| `1258985005` | Invasive mechanical ventilation (regime/therapy) | Invasive maschinelle Beatmung - Beatmung über Endotrachealtubus oder Tracheostoma |

---

#### T-CABS ValueSet Beatmungsmodus

**Link**: [ValueSet Beatmungsmodus](ValueSet-t-cabs-valueset-Beatmungsmodus.html)

**Beschreibung**: Dieses ValueSet enthält IEEE 11073 Codes um die verschiedenen Beatmungsmodi abzubilden.

**System**: IEEE 11073 (`urn:iso:std:iso:11073:10101`)

##### Codes

| Code | Display | Beschreibung |
|------|---------|--------------|
| `475172` | MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC | Assist Control - druckkontrolliert mit Volumenlimit |
| `475147` | MDC_VENT_MODE_ISO_AC_PC_6ACAP | Assist Control - druckkontrolliert |
| `475148` | MDC_VENT_MODE_ISO_AC_vtPC_6ACAP | Assist Control - volumentargetiert druckkontrolliert |
| `475154` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 | Druckunterstützung (Pressure Support Ventilation) |
| `475197` | MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP | BiLevel - Synchronized Intermittent Mandatory Ventilation |
| `475201` | MDC_VENT_MODE_ISO_CMV_VC | Kontrollierte maschinelle Beatmung - volumenkontrolliert |
| `151796` | MDC_PRESS_AWAY_CTS_POS | CPAP - Continuous Positive Airway Pressure |

### Verwendung

Diese ValueSets werden in der T-CABS Beatmungsprozedur ([`T_CABS_Procedure_Beatmung`](StructureDefinition-t-cabs-procedure-beatmung.html)) verwendet, um die spezifische Beatmungsform und den Beatmungsmodus zu kodieren. Die Inhalte wurden von der Ärzteschaft des Centrum für CABS definiert und vom Berlin Institute of Health (BIH) kodiert.

#### Beatmungsform
- Unterscheidung zwischen **nicht-invasiver** und **invasiver** Beatmung
- Grundlegende Kategorisierung des Beatmungsverfahrens

#### Beatmungsmodus  
- Spezifische Modi wie CPAP, BiLevel, PSV, AC, CMV
- Detaillierte technische Parameter der Beatmungseinstellungen
- IEEE 11073 Standard für interoperable Gerätekommunikation