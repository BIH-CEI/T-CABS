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
| `475149` | MDC_VENT_MODE_ISO_CMV_PC_6ACAP | PC: Pressure Control, CMV: Controlled Mandatory Ventilation — Continuous pressure-controlled ventilation allowing spontaneous breathing (open system) during the entire respiratory cycle. May include selectable adjuncts. | PCV, T |
| `475151` | MDC_VENT_MODE_ISO_CMV_vtPC_6ACAP | Kontinuierliche druckkontrollierte Beatmung mit Zielvolumen. May include selectable adjuncts. | PCV(TgV) |
| `475138` | MDC_VENT_MODE_ISO_CMV_VC_6ACAPL | VC: Volume Control, CMV: Controlled Mandatory Ventilation — Continuous volume-controlled ventilation with fixed inspiratory flow. May include selectable adjuncts. | VCV-MPV, MPVv |
| `475162` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP | SPN: Spontaneous, CPAP: Continuous Positive Airway Pressure, PS: Pressure Support — Spontaneous breathing with continuous positive pressure level with or without pressure support. May include selectable adjuncts. | S, PSV ohne verpflichtende Backup-Frequenz |
| `475147` | MDC_VENT_MODE_ISO_AC_PC_6ACAP | PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts. | PCV(A) | 
| `475148` | MDC_VENT_MODE_ISO_AC_vtPC_6ACAP | PC: Pressure Control, AC: Assist Control — Assist-controlled, pressure-controlled ventilation with backup respiratory rate, with tidal volume target and pressure regulation, allowing spontaneous breathing during the entire respiratory cycle. May include selectable adjuncts. |PCV(A+TgV) | 
| `475154` | MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 | PC: Pressure Control, PSV: Pressure Support Ventilation — Pressure-controlled, triggered ventilation with expiratory synchronization and backup respiratory rate. May include selectable adjuncts. | PSV, iVAPS |
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

**Beschreibung**: Dieses ValueSet enthält IEEE-11073-Codes, um PHD-Messgeräte abzubilden. Der Spirometer-Eintrag stammt aus dem PHD-CodeSystem MissingMDCCodes, da hierfür kein MDC-Code publiziert ist.

| Code | Displayname | Beschreibung |
|------|---------|--------------|
| `528388` | MDC_DEV_SPEC_PROFILE_PULS_OXIM | Pulsoximeter |
| `528399` | MDC_DEV_SPEC_PROFILE_SCALE | Waage |
| `528426` | MDC_DEV_SPEC_PROFILE_HF_STRENGTH | Handstärkemesser (Dynamometer) |
| `528391` | MDC_DEV_SPEC_PROFILE_BP | Sphygmomanometer |
| `528413` | MDC_DEV_SPEC_PROFILE_SPIROMETER | Spirometer (aus dem PHD-CodeSystem MissingMDCCodes — in MDC bisher nicht publiziert) |
| `528484` | MDC_DEV_SUB_SPEC_PROFILE_STEP_COUNTER | Schrittzähler |
| `528405` | MDC_DEV_SPEC_PROFILE_PEFM | Peak Flow Meter |

---

### T-CABS ValueSet Beatmungs-Alarmcode

**Link**: [ValueSet Ventilation Alarm Code](ValueSet-t-cabs-valueset-ventilation-alarm-code.html)

**Beschreibung**: Übergreifender Katalog der Alarmcodes, die in den T-CABS-DeviceAlert-Profilen verwendet werden. An FHIR R6 DeviceAlert angeglichen: Grenzwert-Alarme nutzen die generischen Partition-3-Ereigniscodes `MDC_EVT_HI`/`MDC_EVT_LO`; der konkrete Parameter wird über die `alertDerivedFrom`-Referenz des Alarms identifiziert. Nur informativer Überblick — die DeviceAlert-Profile fixieren ihren Code entweder direkt (Apnoe/Diskonnektion/Leckage/Rebreathing/Obstruktive Apnoe) oder binden an den enger gefassten [ValueSet Ventilation Limit Exceedance Code](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html) (Grenzwert-Alarme).

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
| `198168` | MDC_EVT_VENT_PAT_CIRCUIT_LEAK | LeckageAlarm-Profil |

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
| `obstructive-apnea` | Obstructive Apnea Alarm | Obstruktive Apnoe des Patienten erkannt. IEEE 11073 kennt die *Dauer* der obstruktiven Apnoe als Messwert (`MDC_TIME_PD_APNEA_OBSTRUC`, Partition 2), aber kein passendes Partition-3-Ereignis; `MDC_EVT_VENT_ENDOTRACH_TUBE_OBSTRUC` gilt nur für den Endotrachealtubus. Verwendet vom ObstruktionAlarm-Profil. |

---

### T-CABS ValueSet Ventilation Limit Exceedance Code

**Link**: [ValueSet Ventilation Limit Exceedance Code](ValueSet-t-cabs-valueset-ventilation-limit-exceedance-code.html)

**Beschreibung**: Eingeschränkter Satz generischer IEEE-11073-Partition-3-Grenzwert-Ereigniscodes. Wird (required) von den vier Grenzwert-Alarm-DeviceAlert-Profilen gebunden (Druck, Atemfrequenz, Tidalvolumen, Minutenvolumen). Der überwachte Parameter wird durch das bindende Profil und die `alertDerivedFrom`-Referenz des Alarms auf die auslösende Observation identifiziert — nicht durch den IEEE-Code selbst.

| Code | Displayname | Verwendet wenn |
|------|---------|--------------|
| `196648` | MDC_EVT_HI | Messwert überschreitet obere Alarmgrenze |
| `196670` | MDC_EVT_LO | Messwert unterschreitet untere Alarmgrenze |

---

### T-CABS CodeSystem Beatmungsparameter

**Link**: [CodeSystem Ventilation Parameter](CodeSystem-t-cabs-codesystem-ventilation-parameter.html)

**Beschreibung**: T-CABS-Codes für Beatmungsparameter, die weder IEEE 11073 noch LOINC abdeckt. IEEE 11073 codiert Atemzugarten als Anzahl, Frequenz und Dauer, aber nicht als Anteil, während die Hersteller den Anteil spontaner bzw. mandatorischer Atemzüge in Prozent melden. Eine Nutzungszeit führt IEEE 11073 nur für Schlafapnoe-Therapiegeräte.

| Code | Anzeigename | Verwendet von |
|------|---------|--------------|
| `spont-breath-percent` | Spontaneous Breath Percentage | Profil TriggeredBreaths; BREAS `triggeredBreaths`, ResMed `spontTriggBreaths` |
| `mandatory-breath-percent` | Mandatory Breath Percentage | Löwenstein `portionOfMandatoryBreaths_percent` |
| `usage-duration` | Ventilator Usage Duration | BREAS `cumulativeUsage`, ResMed `usage.duration`, Löwenstein `usage_min` |

---

### Mapping-Attribute

Einzelne Hersteller-Modusnamen bilden je nach Gerätekonfiguration auf **verschiedene**
IEEE-11073-Codes ab. Die [ConceptMap der Beatmungsmodi](ConceptMap-t-cabs-cm-beatmungsmodi.html)
drückt das über `dependsOn` am einzelnen Mapping-Ziel aus: ein Quellcode, mehrere Ziele, jedes an
eine Bedingung geknüpft. Dieser Abschnitt definiert diese Bedingungen.

**Attribut `backup-rate-mandatory`** {#backup-rate-mandatory}

**Property-URI:** `https://bih-cei.github.io/T-CABS/Terminologies.html#backup-rate-mandatory`

Gibt an, ob das Beatmungsgerät im abgebildeten Modus **immer** eine Backup-Frequenz anwendet, oder ob
diese abgeschaltet bzw. auf null gesetzt werden kann.

| Wert | Bedeutung | Zielcode |
|------|-----------|----------|
| `true` | Die Backup-Frequenz ist immer aktiv und nicht abschaltbar | `475154` MDC_VENT_MODE_ISO_CSV_PS_6ACAP_012_015 |
| `false` | Die Backup-Frequenz ist abschaltbar, auf 0/min stellbar oder nicht vorhanden | `475162` MDC_VENT_MODE_ISO_CSV_PS_6ACAP |

**Warum die Unterscheidung nötig ist.** Beide Codes tragen denselben systematischen
ISO-19223-Namen `CSV-PS`. Sie unterscheiden sich allein durch die Fußnoten an `475154`, dessen
Definition lautet *„Pressure-controlled, triggered ventilation with expiratory synchronization and
backup respiratory rate"*, während `475162` lautet *„Spontaneous breathing with continuous positive
pressure level with or without pressure support"*. Die verpflichtende Backup-Frequenz ist damit
Bestandteil dessen, was `475154` aussagt. Auf ein Gerät mit abgeschalteter Backup-Frequenz angewandt,
würde der Code etwas behaupten, das das Gerät nicht tut.

**Wie der Wert zu ermitteln ist.** Aus der Gerätekonfiguration, nicht aus dem Modusnamen. Die
Bezeichnung ist geräteübergreifend identisch, nur der Einstellbereich unterscheidet sich. Wo die
Frequenz auf 0/min oder „Aus" gestellt werden kann, ist der Wert `false`. Im Studien-Geräteumfang
betrifft das den BREAS Vivo 3, den Löwenstein prismaVENT 50-C und den ResMed Astral 150 im PS-Modus;
BREAS Vivo 55/60 und Vivo 45 LS, Löwenstein LUISA sowie ResMed Stellar im ST-Modus wenden immer eine
Backup-Frequenz an.

**Hinweis für die Implementierung.** Wer das erstbeste Ziel übernimmt, ohne `dependsOn` auszuwerten,
erzeugt für einen Teil der Geräte den falschen Code. Die Unterstützung von `dependsOn` in der
`$translate`-Operation ist zwischen Terminologieservern uneinheitlich, und die `translate()`-Funktion
der FHIR Mapping Language kann eine Abhängigkeit überhaupt nicht übergeben. Bei automatisierter
Ausführung gehört die Bedingung daher in die Transformationslogik — diese ConceptMap ist dabei die
Spezifikation, nicht das ausführbare Artefakt.

---

**Hinweis:**Die Inhalte wurden von der Ärzteschaft des CABS definiert und vom Berlin Institute of Health (BIH) kodiert. Wenn Kodierungen fehlen bitte ein [Github Issues](https://github.com/BIH-CEI/T-CABS/issues) anlegen.