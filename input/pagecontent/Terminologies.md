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

**Description**: Umbrella catalogue of alarm codes used in T-CABS DeviceAlert profiles. Aligned with FHIR R6 DeviceAlert: limit-exceedance alarms use the generic Partition 3 event codes `MDC_EVT_HI`/`MDC_EVT_LO`, the specific parameter is identified through the alert's `alertDerivedFrom` reference. Informational overview only — DeviceAlert profiles either fix their code directly (Apnea/Disconnection/Rebreathing) or bind to the narrower [Ventilation Limit Exceedance Code ValueSet](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html) (limit alarms).

#### IEEE 11073 — Generic Limit Exceedance Events (Partition 3)

| Code | Display Name | Used when |
|------|---------|--------------|
| `196648` | MDC_EVT_HI | Measurement exceeds upper alarm limit |
| `196670` | MDC_EVT_LO | Measurement falls below lower alarm limit |

#### IEEE 11073 — Specific Event Codes (Partition 3)

| Code | Display Name | Used by |
|------|---------|--------------|
| `199680` | MDC_EVT_APNEA | ApnoeAlarm profile |
| `197172` | MDC_EVT_VENT_DISCONN | DisconnectionAlarm profile |
| `197184` | MDC_EVT_FLOW_OBSTRUC | ObstruktionAlarm profile |
| `198322` | MDC_EVT_LEAK_EXCESSIVE | LeckageAlarm profile |

#### SNOMED CT

| Code | Display Name | Used by |
|------|---------|--------------|
| `405495005` | High airway pressure | DruckAlarm examples (high-pressure case; not pattern-fixed in the profile, as direction-specific) |
| `59127000` | Apnea alarm | ApnoeAlarm profile (alongside MDC_EVT_APNEA) |
| `416260008` | Ventilator disconnection alarm | DisconnectionAlarm profile (alongside MDC_EVT_VENT_DISCONN) |

#### T-CABS Custom

| Code | Display Name | Description |
|------|---------|--------------|
| `rebreathing` | Rebreathing Alarm | Rebreathing of exhaled gas detected (elevated CO2). No IEEE 11073 or SNOMED CT code available. Used by RebreathingAlarm profile. |

---

### T-CABS ValueSet Ventilation Limit Exceedance Code

**Link**: [ValueSet Ventilation Limit Exceedance Code](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html)

**Description**: Restricted set of generic IEEE 11073 Partition 3 limit exceedance event codes. Bound (required) by the four limit-alarm DeviceAlert profiles (Pressure, Respiratory Rate, Tidal Volume, Minute Volume). The monitored parameter is identified by the binding profile and the alert's `alertDerivedFrom` reference to the triggering Observation — not by the IEEE code itself.

#### IEEE 11073 — Generic Limit Exceedance Events (Partition 3)

| Code | Display Name | Used when |
|------|---------|--------------|
| `196648` | MDC_EVT_HI | Measurement exceeds upper alarm limit |
| `196670` | MDC_EVT_LO | Measurement falls below lower alarm limit |

---

**Note:** The content is defined by the medical staff of T-CABS and coded by the Berlin Institute of Health (BIH). If codes are missing, please create a [Github Issue](https://github.com/BIH-CEI/T-CABS/issues).
