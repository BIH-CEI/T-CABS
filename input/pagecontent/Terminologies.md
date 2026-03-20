This page lists the created ValueSets of the T-CABS project:

### T-CABS ValueSet Ventilation Form

**Link**: [ValueSet Ventilation Form](ValueSet-t-cabs-valueset-Beatmungsform.html)

**Description**: This ValueSet contains SNOMED CT codes to represent the various forms of ventilation.
- Distinction between **non-invasive** and **invasive** ventilation
- Basic categorization of the ventilation method

| Code | Display Name | Description |
|------|---------|--------------|
| `428311008` | Non-invasive ventilation (regime/therapy) | Non-invasive ventilation - ventilation via mask or nasal prongs without intubation |
| `1258985005` | Invasive mechanical ventilation (regime/therapy) | Invasive mechanical ventilation - ventilation via endotracheal tube or tracheostomy |

---

### T-CABS ValueSet Ventilation Mode

**Link**: [ValueSet Ventilation Mode](ValueSet-t-cabs-valueset-Beatmungsmodus.html)

**Description**: This ValueSet contains IEEE 11073 codes to represent various ventilation modes.
- Specific modes such as CPAP or PSV
- Detailed technical parameters of ventilation settings
- IEEE 11073 standard for interoperable device communication

| Code | Display Name | Description | *Designation | 
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

***Note:** The mode designations are partially manufacturer-specific.

---

### T-CABS ValueSet Ventilation Site

**Link**: [ValueSet Ventilation Site](ValueSet-t-cabs-valueset-beatmungsstelle.html)

**Description**: This ValueSet contains SNOMED CT codes to represent the body site of ventilation.

| Code | Display Name | Description |
|------|---------|--------------|
| `302549007` | Entire face (body structure) | Ventilation via full-face mask |
| `45206002` | Nasal structure (body structure) | Ventilation via nasal mask |
| `44567001` | Tracheal structure (body structure) | Ventilation via tracheal cannula |

---

### T-CABS ValueSet PHD Type

**Link**: [ValueSet PHD Type](ValueSet-t-cabs-valueset-phdtyp.html)

**Description**: This ValueSet contains IEEE 11073 codes to represent PHD measurement devices.

| Code | Display Name | Description |
|------|---------|--------------|
| `528388` | MDC_DEV_SPEC_PROFILE_PULS_OXIM | Pulse oximeter |
| `528399` | MDC_DEV_SPEC_PROFILE_SCALE | Scale |
| `69876` | MDC_DEV_METER_STRENGTH_MUSCL | Hand strength meter (dynamometer) |
| `528391` | MDC_DEV_SPEC_PROFILE_BP | Sphygmomanometer |
| `69680` | MDC_DEV_ANALY_AWAY_MULTI_PARAM | Spirometer |
| `528484` | MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER | Step counter |
| `528405` | MDC_DEV_SPEC_PROFILE_BCA | Peak flow meter |

---

### T-CABS ValueSet Ventilation Alarm Code

**Link**: [ValueSet Ventilation Alarm Code](ValueSet-t-cabs-valueset-ventilation-alarm-code.html)

**Description**: This ValueSet contains alarm codes for home ventilation device alerts from IEEE 11073-10101, SNOMED CT, and one T-CABS custom code (rebreathing).

#### IEEE 11073 — Alarm Limit Codes

| Code | Display Name | Description |
|------|---------|--------------|
| `151793` | MDC_PRESS_AWAY_MAX | Airway pressure high alarm limit |
| `151794` | MDC_PRESS_AWAY_MIN | Airway pressure low alarm limit |
| `151869` | MDC_VOL_AWAY_TIDAL_MAX | Tidal volume high alarm limit |
| `151870` | MDC_VOL_AWAY_TIDAL_MIN | Tidal volume low alarm limit |
| `151881` | MDC_VOL_MINUTE_AWAY_MAX | Minute volume high alarm limit |
| `151882` | MDC_VOL_MINUTE_AWAY_MIN | Minute volume low alarm limit |
| `151571` | MDC_AWAY_RESP_RATE_MAX | Respiratory rate high alarm limit |
| `151572` | MDC_AWAY_RESP_RATE_MIN | Respiratory rate low alarm limit |

#### IEEE 11073 — Event Codes (ventilator-specific)

| Code | Display Name | Description |
|------|---------|--------------|
| `198172` | MDC_EVT_VENT_PRESS_AWAY_HIGH_CONTINUOUS | Continuous high airway pressure event |
| `199996` | MDC_EVT_VENT_VOL_INSP_HI | Inspiratory tidal volume high event |
| `198134` | MDC_EVT_VENT_APNEA | Apnea event (ventilator-specific) |
| `197172` | MDC_EVT_VENT_DISCONN | Disconnection event (ventilator-specific) |

#### SNOMED CT

| Code | Display Name | Description |
|------|---------|--------------|
| `405495005` | High airway pressure (finding) | Used with pressure high alarms |
| `468881006` | Airway pressure alarm (situation) | Used with pressure low alarms |
| `13621006` | Tidal volume (observable entity) | Used with tidal volume alarms |
| `698823007` | Inspiratory tidal volume (observable entity) | Used with inspiratory volume high event |
| `250811004` | Minute volume (observable entity) | Used with minute volume alarms |
| `86290005` | Respiratory rate (observable entity) | Used with respiratory rate alarms |
| `59127000` | Apnea alarm (situation) | Used with apnea alarms |
| `416260008` | Ventilator disconnection alarm (situation) | Used with disconnection alarms |

#### T-CABS Custom

| Code | Display Name | Description |
|------|---------|--------------|
| `rebreathing` | Rebreathing Alarm | Rebreathing of exhaled gas detected (elevated CO2). No IEEE 11073 or SNOMED CT code available. |

---

**Note:** The content is defined by the medical staff of T-CABS and coded by the Berlin Institute of Health (BIH). If codes are missing, please create a [Github Issue](https://github.com/BIH-CEI/T-CABS/issues).
