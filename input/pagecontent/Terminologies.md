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
| `475149` | MDC_VENT_MODE_ISO_CMV_PC_6ACAP | PC: Pressure Control, CMV: Controlled Mandatory Ventilation — Continuous pressure-controlled ventilation allowing spontaneous breathing (open system) during the entire respiratory cycle. May include selectable adjuncts. | PCV, T |
| `475151` | MDC_VENT_MODE_ISO_CMV_vtPC_6ACAP | Continuous pressure-controlled ventilation with target volume. May include selectable adjuncts. | PCV(TgV) |
| `475138` | MDC_VENT_MODE_ISO_CMV_VC_6ACAPL | VC: Volume Control, CMV: Controlled Mandatory Ventilation — Continuous volume-controlled ventilation with fixed inspiratory flow. May include selectable adjuncts. | VCV-MPV, MPVv |
| `475162` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP | SPN: Spontaneous, CPAP: Continuous Positive Airway Pressure, PS: Pressure Support — Spontaneous breathing with continuous positive pressure level with or without pressure support. May include selectable adjuncts. | S, PSV without mandatory backup rate |
| `475198` | MDC_VENT_MODE_ISO_CSV_vtPS_3CC | Volume Support | iVAPS |
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

**Description**: This ValueSet contains IEEE 11073 codes to represent PHD measurement devices. The spirometer entry is taken from the PHD MissingMDCCodes code system, as no MDC code has been published for it.

| Code | Display Name | Description |
|------|---------|--------------|
| `528388` | MDC_DEV_SPEC_PROFILE_PULS_OXIM | Pulse oximeter |
| `528399` | MDC_DEV_SPEC_PROFILE_SCALE | Scale |
| `528426` | MDC_DEV_SPEC_PROFILE_HF_STRENGTH | Hand strength meter (dynamometer) |
| `528391` | MDC_DEV_SPEC_PROFILE_BP | Sphygmomanometer |
| `528413` | MDC_DEV_SPEC_PROFILE_SPIROMETER | Spirometer (from the PHD MissingMDCCodes code system — not yet published in MDC) |
| `528484` | MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER | Step counter |
| `528405` | MDC_DEV_SPEC_PROFILE_PEFM | Peak flow meter |

---

### T-CABS ValueSet Ventilation Alarm Code

**Link**: [ValueSet Ventilation Alarm Code](ValueSet-t-cabs-valueset-ventilation-alarm-code.html)

**Description**: Umbrella catalogue of alarm codes used in T-CABS DeviceAlert profiles. Aligned with FHIR R6 DeviceAlert: limit-exceedance alarms use the generic Partition 3 event codes `MDC_EVT_HI`/`MDC_EVT_LO`, the specific parameter is identified through the alert's `alertDerivedFrom` reference. Informational overview only — DeviceAlert profiles either fix their code directly (Apnea/Disconnection/Leakage/Rebreathing/Obstructive Apnea) or bind to the narrower [Ventilation Limit Exceedance Code ValueSet](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html) (limit alarms).

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
| `198168` | MDC_EVT_VENT_PAT_CIRCUIT_LEAK | LeckageAlarm profile |

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
| `obstructive-apnea` | Obstructive Apnea Alarm | Obstructive apnea of the patient detected. IEEE 11073 carries the *duration* of obstructive apnea as a measurement (`MDC_TIME_PD_APNEA_OBSTRUC`, Partition 2) but has no matching Partition 3 event; `MDC_EVT_VENT_ENDOTRACH_TUBE_OBSTRUC` applies to the endotracheal tube only. Used by ObstruktionAlarm profile. |

---

### T-CABS ValueSet Ventilation Limit Exceedance Code

**Link**: [ValueSet Ventilation Limit Exceedance Code](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html)

**Description**: Restricted set of generic IEEE 11073 Partition 3 limit exceedance event codes. Bound (required) by the four limit-alarm DeviceAlert profiles (Pressure, Respiratory Rate, Tidal Volume, Minute Volume). The monitored parameter is identified by the binding profile and the alert's `alertDerivedFrom` reference to the triggering Observation — not by the IEEE code itself.

| Code | Display Name | Used when |
|------|---------|--------------|
| `196648` | MDC_EVT_HI | Measurement exceeds upper alarm limit |
| `196670` | MDC_EVT_LO | Measurement falls below lower alarm limit |

---

### Mapping Attributes

Some vendor mode names map to different IEEE 11073 codes depending on how the device is configured.
The [Ventilation Modes ConceptMap](ConceptMap-t-cabs-cm-beatmungsmodi.html) expresses this with
`dependsOn` on the individual mapping target: one source code, several targets, each qualified by a
condition. This section defines those conditions.

**Attribute `backup-rate-mandatory`** {#backup-rate-mandatory}

**Property URI:** `https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory`

Indicates whether the ventilator, in the mode being mapped, always applies a backup respiratory rate,
or whether that rate can be switched off or set to zero.

| Value | Meaning | Target code |
|-------|---------|-------------|
| `true` | The backup rate is always active and cannot be disabled | `475154` MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 |
| `false` | The backup rate can be switched off, set to 0/min, or is absent | `475162` MDC_VENT_MODE_ISO_CSV_PS_6ACAP |

**Why the distinction matters.** Both codes carry the same systematic ISO 19223 name, `CSV-PS`. They
differ only in the footnotes attached to `475154`, whose definition reads *"Pressure-controlled,
triggered ventilation with expiratory synchronization and backup respiratory rate"*, while `475162`
reads *"Spontaneous breathing with continuous positive pressure level with or without pressure
support"*. The mandatory backup rate is therefore part of what `475154` asserts. Applying it to a
device whose backup rate is switched off would state something the device does not do.

**How to determine the value.** From the ventilator's configuration, not from the mode name. The mode
label is identical across devices; only the setting range differs. Where the rate can be set to 0/min
or to "off", the value is `false`. Among the devices in scope this affects the BREAS Vivo 3, the
Löwenstein prismaVENT 50-C and the ResMed Astral 150 in PS; the BREAS Vivo 55/60 and Vivo 45 LS, the
Löwenstein LUISA and the ResMed Stellar in ST always apply a backup rate.

**Note for implementers.** A consumer that takes the first target it finds, without evaluating
`dependsOn`, will produce the wrong code for part of the device population. Support for `dependsOn`
in the `$translate` operation is inconsistent across terminology servers, and the FHIR Mapping
Language `translate()` function cannot pass a dependency at all. Where mappings are executed
automatically, the condition should be implemented in the transformation logic, using this ConceptMap
as the specification rather than as an executable artefact.

---

**Note:** The content is defined by the medical staff of T-CABS and coded by the Berlin Institute of Health (BIH). If codes are missing, please create a [Github Issue](https://github.com/BIH-CEI/T-CABS/issues).
