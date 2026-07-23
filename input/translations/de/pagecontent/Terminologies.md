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
| `475147` | MDC_VENT_MODE_ISO_AC_PC_6ACAP | PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts. | PCV(A) | 
| `475148` | MDC_VENT_MODE_ISO_AC_vtPC_6ACAP | PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, with tidal volume target and pressure regulation, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts. |PCV(A+TgV) | 
| `475154` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 | PC: Pressure Control, PSV: Pressure Support Ventilation — Pressure-controlled, triggered ventilation with expiratory synchronization and backup respiratory rate. May include selectable adjuncts. | PSV | 
| `475197` | MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP | BiLevel Airway Pressure Ventilation | S/T | 
| `475201` | MDC_VENT_MODE_ISO_CMV_VC | Volume Control Ventilation | VCV | 
| `475161` | MDC_VENT_MODE_ISO_CSV_6ACAP | SPN: Spontaneous, CPAP: Continuous Positive Airway Pressure — Spontaneous breathing with continuous positive pressure level. May include selectable adjuncts. | CPAP | 
| `475140` | MDC_VENT_MODE_ISO_AC_VC_6ACAPL | VC: Volume Control, AC: Assist Control — Assisted-controlled, volume-controlled ventilation with fixed inspiratory flow and backup respiratory rate. May include selectable adjuncts. | VCV(A) | 
| `475136` | MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL | VC: Volume Control, SIMV: Synchronized Intermittent Mandatory Ventilation — Intermittent, triggered, volume-controlled ventilation with a fixed inspiratory flow, allowing spontaneous breathing during the expiratory phase. May include selectable adjuncts. | VCV-SIMV | 
| `475190` | MDC_VENT_MODE_ISO_HIFLOW_3NIV | High flow therapy | HFT |
| `475155` | MDC_VENT_MODE_ISO_CSV_vtPS_6ACAP_012_015 | PC: Pressure Control, PSV: Pressure Support Ventilation — Pressure-controlled, triggered ventilation with expiratory synchronization and backup respiratory rate, with tidal volume target and pressure regulation. May include selectable adjuncts. | PSV(TgV) |
| `475144` | MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP | PC: Pressure Control, SIMV: Synchronized Intermittent Mandatory Ventilation — Intermittent, triggered, pressure-controlled ventilation allowing spontaneous breathing (open system) during the entire respiratory cycle. May include selectable adjuncts. | PCV-SIMV | 

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

### T-CABS ValueSet Beatmungs-Alarmcode

**Link**: [ValueSet Ventilation Alarm Code](ValueSet-t-cabs-valueset-ventilation-alarm-code.html)

**Beschreibung**: Übergreifender Katalog der Alarmcodes, die in den T-CABS-DeviceAlert-Profilen verwendet werden. An FHIR R6 DeviceAlert angeglichen: Grenzwert-Alarme nutzen die generischen Partition-3-Ereigniscodes `MDC_EVT_HI`/`MDC_EVT_LO`; der konkrete Parameter wird über die `alertDerivedFrom`-Referenz des Alarms identifiziert. Nur informativer Überblick — die DeviceAlert-Profile fixieren ihren Code entweder direkt (Apnoe/Diskonnektion/Rebreathing) oder binden an den enger gefassten [ValueSet Ventilation Limit Exceedance Code](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html) (Grenzwert-Alarme).

#### IEEE 11073 — Generische Grenzwert-Ereignisse (Partition 3)

| Code | Displayname | Verwendet wenn |
|------|---------|--------------|
| `196648` | MDC_EVT_HI | Messwert überschreitet obere Alarmgrenze |
| `196670` | MDC_EVT_LO | Messwert unterschreitet untere Alarmgrenze |

#### IEEE 11073 — Spezifische Ereigniscodes (Partition 3)

| Code | Displayname | Verwendet von |
|------|---------|--------------|
| `199680` | MDC_EVT_APNEA | ApnoeAlarm-Profil |
| `197172` | MDC_EVT_VENT_DISCONN | DisconnectionAlarm-Profil |
| `197184` | MDC_EVT_FLOW_OBSTRUC | ObstruktionAlarm-Profil |
| `198322` | MDC_EVT_LEAK_EXCESSIVE | LeckageAlarm-Profil |

#### SNOMED CT

| Code | Displayname | Verwendet von |
|------|---------|--------------|
| `405495005` | High airway pressure | DruckAlarm-Beispiele (Hochdruck-Fall; im Profil nicht als Pattern fixiert, da richtungsspezifisch) |
| `59127000` | Apnea alarm | ApnoeAlarm-Profil (neben MDC_EVT_APNEA) |
| `416260008` | Ventilator disconnection alarm | DisconnectionAlarm-Profil (neben MDC_EVT_VENT_DISCONN) |

#### T-CABS Custom

| Code | Displayname | Beschreibung |
|------|---------|--------------|
| `rebreathing` | Rebreathing Alarm | Rückatmung ausgeatmeten Gases erkannt (erhöhtes CO2). Kein IEEE-11073- oder SNOMED-CT-Code verfügbar. Verwendet vom RebreathingAlarm-Profil. |

---

### T-CABS ValueSet Ventilation Limit Exceedance Code

**Link**: [ValueSet Ventilation Limit Exceedance Code](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html)

**Beschreibung**: Eingeschränkter Satz generischer IEEE-11073-Partition-3-Grenzwert-Ereigniscodes. Wird (required) von den vier Grenzwert-Alarm-DeviceAlert-Profilen gebunden (Druck, Atemfrequenz, Tidalvolumen, Minutenvolumen). Der überwachte Parameter wird durch das bindende Profil und die `alertDerivedFrom`-Referenz des Alarms auf die auslösende Observation identifiziert — nicht durch den IEEE-Code selbst.

#### IEEE 11073 — Generische Grenzwert-Ereignisse (Partition 3)

| Code | Displayname | Verwendet wenn |
|------|---------|--------------|
| `196648` | MDC_EVT_HI | Messwert überschreitet obere Alarmgrenze |
| `196670` | MDC_EVT_LO | Messwert unterschreitet untere Alarmgrenze |

---

**Hinweis:**Die Inhalte wurden von der Ärzteschaft des CABS definiert und vom Berlin Institute of Health (BIH) kodiert. Wenn Kodierungen fehlen bitte ein [Github Issues](https://github.com/BIH-CEI/T-CABS/issues) anlegen.