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
| `475147` | MDC_VENT_MODE_ISO_AC_PC_6ACAP | Pressure Control - Assist Control| PCV(A) | 
| `475148` | MDC_VENT_MODE_ISO_AC_vtPC_6ACAP | Pressure Control - Assist Control with Target Volume |PCV(A+TgV) | 
| `475154` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 | Pressure Support Ventilation | PSV | 
| `475197` | MDC_VENT_MODE_ISO_Bi9level_AV_0_SIMV_PC_8PS_8PS_6ACAP | BiLevel - Airway Pressure Ventilation | S/T | 
| `475201` | MDC_VENT_MODE_ISO_CMV_VC | Volume Control | VCV | 
| `475161` | MDC_VENT_MODE_ISO_CSV_6ACAP | Continuous Positive Airway Pressure | CPAP | 
| `475140` | MDC_VENT_MODE_ISO_AC_VC_6ACAPL | Assist Control - Volume Control | VCV(A) | 
| `475136` | MDC_VENT_MODE_ISO_SIMV_VC_8PS_6ACAPL | Volume Control - Synchronized Intermittent Mandatory Ventilation | VCV-SIMV | 
| `475190` | MDC_VENT_MODE_ISO_HIFLOW_3NIV | High flow therapy | HFT |
| `475155` | MDC_VENT_MODE_ISO_CSV_vtPS_6ACAP_012_015 | Pressure Support Ventilation with Target Volume | PSV(TgV) |
| `475144` | MDC_VENT_MODE_ISO_SIMV_PC_8PS_6ACAP | Pressure Control - Synchronized Intermittent Mandatory Ventilation | PCV-SIMV | 

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

**Note:** The content is defined by the medical staff of CABS and coded by the Berlin Institute of Health (BIH). If codes are missing, please create a [Github Issue](https://github.com/BIH-CEI/T-CABS/issues).