Diese Seite listet die erstellten ValueSets des T-CABS Projekts auf:

### T-CABS ValueSet Beatmungsform

**Link**: [ValueSet Beatmungsform](ValueSet-t-cabs-valueset-Beatmungsform.html)

**Beschreibung**: Dieses ValueSet enthält SNOMED CT Codes um die verschiedenen Beatmungsformen abzubilden.
- Unterscheidung zwischen **nicht-invasiver** und **invasiver** Beatmung
- Grundlegende Kategorisierung des Beatmungsverfahrens

| Code | Displayname | Beschreibung |
|------|---------|--------------|
| `428311008` | Non-invasive ventilation (regime/therapy) | Nicht-invasive Beatmung - Beatmung über Maske oder Nasenprongs ohne Intubation |
| `1258985005` | Invasive mechanical ventilation (regime/therapy) | Invasive maschinelle Beatmung - Beatmung über Endotrachealtubus oder Tracheostoma |

---

### T-CABS ValueSet Beatmungsmodus

**Link**: [ValueSet Beatmungsmodus](ValueSet-t-cabs-valueset-Beatmungsmodus.html)

**Beschreibung**: Dieses ValueSet enthält IEEE 11073 Codes um verschiedenen Beatmungsmodi abzubilden.
- Spezifische Modi wie z.B. CPAP oder PSV
- Detaillierte technische Parameter der Beatmungseinstellungen
- IEEE 11073 Standard für interoperable Gerätekommunikation

| Code | Displayname | Beschreibung | *Bezeichnung | 
|------|---------|--------------|
| `475172` | MDC_VENT_MODE_ISO_AC_PC5vLim_6ACAPH_3LC_3TRGC | Pressure Control | PCV | 
| `475147` | MDC_VENT_MODE_ISO_AC_PC_6ACAP | Pressure Control - Assist Control| PCV(A) | 
| `475148` | MDC_VENT_MODE_ISO_AC_vtPC_6ACAP | Pressure Control - Assist Control mit Zielvolumen |PCV(A+TgV) | 
| `475154` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 | Druckunterstützung (Pressure Support Ventilation) | PSV | 
| `475197` | MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP | BiLevel - Airway Pressure Ventilation Ventilation | S/T | 
| `475201` | MDC_VENT_MODE_ISO_CMV_VC | Volume Control | VCV | 
| `151796` | MDC_PRESS_AWAY_CTS_POS | Continuous Positive Airway Pressure | CPAP | 
| `475140` | MDC_VENT_MODE_ISO_AC_VC_6ACAPL | Assist Control - Volume Control | VCV(A) | 
| `475136` | MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL | Volume Control - Synchronized Intermittent Mandatory Ventilation | VCV-SIMV | 
| `475190` | MDC_VENT_MODE_ISO_HIFLOW_3NIV | High flow therapy | HFT | 

***Hinweis:** Die Bezeichnungen der Modi sind teilweise herstellerspezifisch.

---

### T-CABS ValueSet Beatmungsstelle

**Link**: [ValueSet Beatmungsstelle](ValueSet-t-cabs-valueset-beatmungsstelle.html)

**Beschreibung**: Dieses ValueSet enthält SNOMED CT Codes um die Körperstelle der Beatmung abzubilden.

| Code | Displayname | Beschreibung |
|------|---------|--------------|
| `302549007` | Entire face (body structure) | Beatmung über eine Full-Face Maske |
| `45206002` | Nasal structure (body structure) | Beatmung über eine Nasemaske |
| `44567001` | Tracheal structure (body structure) | Beatmung über eine Trachealkanüle |

---

### T-CABS ValueSet PHDTyp

**Link**: [ValueSet PHD-Typ](ValueSet-t-cabs-valueset-phdtyp.html)

**Beschreibung**: Dieses ValueSet enthält IEEE 11073 Codes um PHD-Messgeräte abzubilden.

| Code | Displayname | Beschreibung |
|------|---------|--------------|
| `528388` | MDC_DEV_SPEC_PROFILE_PULS_OXIM | Pulsoximeter |
| `528399` | MDC_DEV_SPEC_PROFILE_SCALE | Waage |
| `69876` | MDC_DEV_METER_STRENGTH_MUSCL | Handstärkemessern (Dynamometer) |
| `528391` | MDC_DEV_SPEC_PROFILE_BP | Sphygmomanometer |
| `69680` | MDC_DEV_ANALY_AWAY_MULTI_PARAM | Spirometer |
| `528484` | MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER | Schrittzähler |
| `528405` | MDC_DEV_SPEC_PROFILE_BCA | Peak Flow Meter |

---

**Hinweis:**Die Inhalte wurden von der Ärzteschaft des CABS definiert und vom Berlin Institute of Health (BIH) kodiert. Wenn Kodierungen fehlen bitte ein [Github Issues](https://github.com/BIH-CEI/T-CABS/issues) anlegen.