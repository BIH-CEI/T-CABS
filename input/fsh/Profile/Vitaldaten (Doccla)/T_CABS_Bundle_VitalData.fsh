// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  T-CABS Transaction Bundles — Vitaldaten (Vital Data)                      │
// │  Zeigen die gebündelte Übermittlung von Vitalparametern an einen FHIR-Server│
// ╰──────────────────────────────────────────────────────────────────────────────╯

// ── Bundle 2a: Initial — Erstmalige Datenübermittlung ────────────────────────
// Alle Ressourcen werden neu erstellt (POST).
// Zeigt PHD-Workflow: PHG (Personal Health Gateway) + PHD (Personal Health Device) → Observations.

Instance: Example-Bundle-VitalData-Initial
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Bundle — Vital Data Initial"
Description: "Initial submission of vital data: Patient, Organization, PHG tablet, PHD devices (pulse oximeter, scale), and first measurements (SpO2, heart rate, body weight, BMI)."
* type = #transaction

// 1 — Patient
* entry[+].fullUrl = "urn:uuid:80192a3b-2345-4678-9012-3a4b5c6d7e8f"
* entry[=].resource = tcabs-patient-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// 2 — Organization (Provider)
* entry[+].fullUrl = "urn:uuid:912a3b4c-3456-4789-0123-4a5b6c7d8e9f"
* entry[=].resource = beispiel-provider-doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

// 3 — Device PHG (Personal Health Gateway)
* entry[+].fullUrl = "urn:uuid:a23b4c5d-4567-4890-1234-5a6b7c8d9e0f"
* entry[=].resource = beispiel-phg-doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 4 — Device PHD (Pulsoximeter)
* entry[+].fullUrl = "urn:uuid:b34c5d6e-5678-4901-2345-6a7b8c9d0e1f"
* entry[=].resource = beispiel-phd-pulsoximeter
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 5 — Device PHD (Waage)
* entry[+].fullUrl = "urn:uuid:c45d6e7f-6789-4012-3456-7a8b9c0d1e2f"
* entry[=].resource = beispiel-phd-waage
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 6 — Observation SpO2
* entry[+].fullUrl = "urn:uuid:d56e7f80-7890-4123-4567-8a9b0c1d2e3f"
* entry[=].resource = Example-ArterielleSPO2-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 7 — Observation Herzfrequenz
* entry[+].fullUrl = "urn:uuid:e67f8091-8901-4234-5678-9a0b1c2d3e4f"
* entry[=].resource = Example-Herzfrequenz-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 8 — Observation Körpergewicht
* entry[+].fullUrl = "urn:uuid:f78091a2-9012-4345-6789-0a1b2c3d4e5f"
* entry[=].resource = Example-Koerpergewicht-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 9 — Observation BMI
* entry[+].fullUrl = "urn:uuid:0891a2b3-0123-4456-7890-1a2b3c4d5e6f"
* entry[=].resource = Example-BMI-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"


// ── Bundle 2b: Follow-up — Folgeübermittlung ─────────────────────────────────
// Patient und Geräte existieren bereits (PUT = Update).
// Neue Messwerte werden erstellt (POST).

Instance: Example-Bundle-VitalData-FollowUp
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Bundle — Vital Data Follow-up"
Description: "Follow-up submission of vital data: Patient and devices are updated (PUT), new measurements (SpO2, heart rate, body weight, BMI) are created (POST)."
* type = #transaction

// 1 — Patient (Update)
* entry[+].fullUrl = "urn:uuid:19a2b3c4-1234-4567-8901-2a3b4c5d6e7f"
* entry[=].resource = tcabs-patient-example
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/tcabs-patient-example"

// 2 — Device PHG (Update)
* entry[+].fullUrl = "urn:uuid:2ab3c4d5-2345-4678-9012-3a4b5c6d7e8f"
* entry[=].resource = beispiel-phg-doccla
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/beispiel-phg-doccla"

// 3 — Device PHD Pulsoximeter (Update)
* entry[+].fullUrl = "urn:uuid:3bc4d5e6-3456-4789-0123-4a5b6c7d8e9f"
* entry[=].resource = beispiel-phd-pulsoximeter
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/beispiel-phd-pulsoximeter"

// 4 — Device PHD Waage (Update)
* entry[+].fullUrl = "urn:uuid:4cd5e6f7-4567-4890-1234-5a6b7c8d9e0f"
* entry[=].resource = beispiel-phd-waage
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/beispiel-phd-waage"

// 5 — Observation SpO2 (Neu)
* entry[+].fullUrl = "urn:uuid:5de6f708-5678-4901-2345-6a7b8c9d0e1f"
* entry[=].resource = Example-ArterielleSPO2-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 6 — Observation Herzfrequenz (Neu)
* entry[+].fullUrl = "urn:uuid:6ef70819-6789-4012-3456-7a8b9c0d1e2f"
* entry[=].resource = Example-Herzfrequenz-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 7 — Observation Körpergewicht (Neu)
* entry[+].fullUrl = "urn:uuid:7f08192a-7890-4123-4567-8a9b0c1d2e3f"
* entry[=].resource = Example-Koerpergewicht-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 8 — Observation BMI (Neu)
* entry[+].fullUrl = "urn:uuid:8019a2b3-8901-4234-5678-9a0b1c2d3e4f"
* entry[=].resource = Example-BMI-Doccla
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
