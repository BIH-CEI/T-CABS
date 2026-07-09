// ============================================================================
// ConceptMap: Doccla SNOMED CT → IEEE 11073
// Source: Doccla UniFHIR v2 TIE documentation (example Bundle, Appendix)
// ============================================================================

Instance: t-cabs-cm-doccla-to-ieee11073
InstanceOf: ConceptMap
Usage: #definition
* name = "DocclaToIEEE11073"
* title = "Doccla Vital Signs to IEEE 11073 Mapping"
* description = "Maps SNOMED CT codes used by Doccla UniFHIR v2 Trust Integration Engine to IEEE 11073-10101 nomenclature codes used in T-CABS vital data profiles. Doccla uses SNOMED CT as default coding, but code maps are configurable per trust integration. Blood pressure codes are verified from the Doccla UniFHIR v2 example Bundle (Appendix). LOINC → IEEE 11073 mappings are not included here as they are already defined in the T-CABS observation profiles themselves."
* status = #draft
* experimental = false

* group[0].source = "http://snomed.info/sct"
* group[=].target = "urn:iso:std:iso:11073:10101"

// ---- Blood Pressure (verified from Doccla UniFHIR v2 example Bundle) ----

* group[=].element[0].code = #163020007
* group[=].element[=].display = "O/E - blood pressure reading (finding)"
* group[=].element[=].target[0].code = #150016
* group[=].element[=].target[=].display = "MDC_PRESS_BLD_NONINV"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus; 1/4 reviewers scored 2 — the LOINC second code may include paediatric blood pressure). Code kept. Doccla UniFHIR v2 verified. Panel code. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-arteriellerblutdruck"

* group[=].element[+].code = #72313002
* group[=].element[=].display = "Systolic arterial pressure (observable entity)"
* group[=].element[=].target[0].code = #150017
* group[=].element[=].target[=].display = "MDC_PRESS_BLD_NONINV_SYS"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Doccla UniFHIR v2 verified. Component, unit: mm[Hg]. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-arteriellerblutdruck"

* group[=].element[+].code = #1091811000000102
* group[=].element[=].display = "Diastolic arterial pressure (observable entity)"
* group[=].element[=].target[0].code = #150018
* group[=].element[=].target[=].display = "MDC_PRESS_BLD_NONINV_DIA"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reviewed (consensus). Code confirmed. Doccla UniFHIR v2 verified. SNOMED CT UK Extension. Component, unit: mm[Hg]. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observation-arteriellerblutdruck"

// ---- Grip Strength (SNOMED in T-CABS profile, no LOINC code available) ----

* group[=].element[+].code = #251433001
* group[=].element[=].display = "Grip strength (observable entity)"
* group[=].element[=].target[0].code = #8455547
* group[=].element[=].target[=].display = "MDC_HF_GRIP_CLOSE"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Reviewed. IEEE code removed from profile — MDC_HF_GRIP_CLOSE describes 'close-handed grip', not general grip strength. Profile uses SNOMED 251433001 only. Profile: https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-observationhandgriffstaerke"
