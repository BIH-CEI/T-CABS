// ╭──────────────────────────────────────────────────────────────────────────────╮
// │  T-CABS Transaction Bundles — Beatmungsdaten (Ventilation)                 │
// │  Zeigen die gebündelte Übermittlung von Beatmungsdaten an einen FHIR-Server│
// ╰──────────────────────────────────────────────────────────────────────────────╯

// ── Bundle 1a: Initial — Erstmalige Datenübermittlung ────────────────────────
// Alle Ressourcen werden neu erstellt (POST).
// Zeigt vollständige IEEE 11073 Device-Hierarchie (MDS → VMD → Channel → DeviceMetric)
// plus Patient, Organization, Procedure und Observations.

Instance: Example-Bundle-Ventilation-Initial
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Bundle — Ventilation Initial"
Description: "Initial submission of ventilation data: Patient, Organization, complete IEEE 11073 device hierarchy (MDS → VMD → Channel → DeviceMetric), ventilation procedure, first measurements (AHI, AMV), and an event-based DeviceAlert (Rebreathing)."
* type = #transaction

// 1 — Patient
* entry[+].fullUrl = "urn:uuid:a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d"
* entry[=].resource = tcabs-patient-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// 2 — Organization (Provider)
* entry[+].fullUrl = "urn:uuid:b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e"
* entry[=].resource = beispiel-provider-jochum
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

// 3 — Device MDS (Beatmungsgerät)
* entry[+].fullUrl = "urn:uuid:c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f"
* entry[=].resource = beispiel-beatmungsgeraet-breas
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 4 — Device VMD (AHI-Modul)
* entry[+].fullUrl = "urn:uuid:d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f80"
* entry[=].resource = beispiel-vmd-breas-ahi
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 5 — Device VMD (AMV-Modul)
* entry[+].fullUrl = "urn:uuid:e5f6a7b8-c9d0-4e1f-2a3b-4c5d6e7f8091"
* entry[=].resource = beispiel-vmd-breas-amv
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 6 — Device Channel (AHI)
* entry[+].fullUrl = "urn:uuid:f6a7b8c9-d0e1-4f2a-3b4c-5d6e7f8091a2"
* entry[=].resource = beispiel-channel-breas-ahi
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 7 — Device Channel (AMV)
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-e1f2-4a3b-4c5d-6e7f8091a2b3"
* entry[=].resource = beispiel-channel-breas-amv
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 8 — DeviceMetric (AHI)
* entry[+].fullUrl = "urn:uuid:b8c9d0e1-f2a3-4b4c-5d6e-7f8091a2b3c4"
* entry[=].resource = beispiel-devicemetric-breas-ahi
* entry[=].request.method = #POST
* entry[=].request.url = "DeviceMetric"

// 9 — DeviceMetric (AMV)
* entry[+].fullUrl = "urn:uuid:c9d0e1f2-a3b4-4c5d-6e7f-8091a2b3c4d5"
* entry[=].resource = beispiel-devicemetric-breas-amv
* entry[=].request.method = #POST
* entry[=].request.url = "DeviceMetric"

// 10 — Procedure (Beatmung)
* entry[+].fullUrl = "urn:uuid:d0e1f2a3-b4c5-4d6e-7f80-91a2b3c4d5e6"
* entry[=].resource = beispiel-beatmung-breas
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// 11 — Observation AHI
* entry[+].fullUrl = "urn:uuid:e1f2a3b4-c5d6-4e7f-8091-a2b3c4d5e6f7"
* entry[=].resource = Example-AHI-BREAS
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 12 — Observation AMV
* entry[+].fullUrl = "urn:uuid:f2a3b4c5-d6e7-4f80-91a2-b3c4d5e6f708"
* entry[=].resource = Example-AMV-BREAS-gemessen
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 13 — DeviceAlert (Rebreathing, event-based)
* entry[+].fullUrl = "urn:uuid:a3b4c5d6-e7f8-4091-a2b3-c4d5e6f70819"
* entry[=].resource = Example-DeviceAlert-Rebreathing-BREAS
* entry[=].request.method = #POST
* entry[=].request.url = "Basic"

// ── Coherent respiratory-rate chain: Alert → measured Observation → setting ──
// Device tree (VMD/Channel), both DeviceMetrics (measured + set, relation-linked),
// both Observations and the high-limit alarm derived from the measured value.

// 14 — VMD respiratory rate
* entry[+].fullUrl = "urn:uuid:b4c5d6e7-f809-41a2-b3c4-d5e6f70819a2"
* entry[=].resource = beispiel-vmd-breas-atemfrequenz
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 15 — Channel respiratory rate
* entry[+].fullUrl = "urn:uuid:c5d6e7f8-091a-42b3-c4d5-e6f70819a2b3"
* entry[=].resource = beispiel-channel-breas-atemfrequenz
* entry[=].request.method = #POST
* entry[=].request.url = "Device"

// 16 — DeviceMetric respiratory rate (measured)
* entry[+].fullUrl = "urn:uuid:d6e7f809-1a2b-43c4-d5e6-f70819a2b3c4"
* entry[=].resource = beispiel-devicemetric-breas-atemfrequenz
* entry[=].request.method = #POST
* entry[=].request.url = "DeviceMetric"

// 17 — DeviceMetric respiratory rate (setting, relation → measured)
* entry[+].fullUrl = "urn:uuid:e7f8091a-2b3c-44d5-e6f7-0819a2b3c4d5"
* entry[=].resource = beispiel-devicemetric-breas-atemfrequenz-set
* entry[=].request.method = #POST
* entry[=].request.url = "DeviceMetric"

// 18 — Observation respiratory rate (measured, 32/min — triggers the alarm)
* entry[+].fullUrl = "urn:uuid:f8091a2b-3c4d-45e6-f708-19a2b3c4d5e6"
* entry[=].resource = Example-Atemfrequenz-BREAS-gemessen
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 19 — Observation respiratory rate (set backup rate, 12/min)
* entry[+].fullUrl = "urn:uuid:091a2b3c-4d5e-46f7-0819-a2b3c4d5e6f7"
* entry[=].resource = Example-Atemfrequenz-BREAS-Setting
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 20 — DeviceAlert (respiratory rate high, limit-based, derivedFrom measured)
* entry[+].fullUrl = "urn:uuid:1a2b3c4d-5e6f-4708-19a2-b3c4d5e6f708"
* entry[=].resource = Example-DeviceAlert-AtemfrequenzHoch-BREAS
* entry[=].request.method = #POST
* entry[=].request.url = "Basic"


// ── Bundle 1b: Follow-up — Folgeübermittlung ─────────────────────────────────
// Patient und Geräte existieren bereits (PUT = Update).
// Neue Messwerte werden erstellt (POST).

Instance: Example-Bundle-Ventilation-FollowUp
InstanceOf: Bundle
Usage: #example
Title: "Example Transaction Bundle — Ventilation Follow-up"
Description: "Follow-up submission of ventilation data: Patient and devices are updated (PUT), new measurements (AHI, AMV), ventilation procedure, and a limit-exceedance DeviceAlert (Respiratory Rate HIGH) are created (POST). The alert's `alertDerivedFrom` Observation is expected to exist on the server from a previous transaction."
* type = #transaction

// 1 — Patient (Update)
* entry[+].fullUrl = "urn:uuid:10a2b3c4-d5e6-4f78-9012-3a4b5c6d7e8f"
* entry[=].resource = tcabs-patient-example
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient/tcabs-patient-example"

// 2 — Device MDS (Update)
* entry[+].fullUrl = "urn:uuid:20b3c4d5-e6f7-4890-1234-5a6b7c8d9e0f"
* entry[=].resource = beispiel-beatmungsgeraet-breas
* entry[=].request.method = #PUT
* entry[=].request.url = "Device/beispiel-beatmungsgeraet-breas"

// 3 — DeviceMetric AHI (Update)
* entry[+].fullUrl = "urn:uuid:30c4d5e6-f789-4012-3456-7a8b9c0d1e2f"
* entry[=].resource = beispiel-devicemetric-breas-ahi
* entry[=].request.method = #PUT
* entry[=].request.url = "DeviceMetric/beispiel-devicemetric-breas-ahi"

// 4 — DeviceMetric AMV (Update)
* entry[+].fullUrl = "urn:uuid:40d5e6f7-8901-4234-5678-9a0b1c2d3e4f"
* entry[=].resource = beispiel-devicemetric-breas-amv
* entry[=].request.method = #PUT
* entry[=].request.url = "DeviceMetric/beispiel-devicemetric-breas-amv"

// 5 — Procedure (Neu)
* entry[+].fullUrl = "urn:uuid:50e6f708-9012-4345-6789-0a1b2c3d4e5f"
* entry[=].resource = beispiel-beatmung-breas
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

// 6 — Observation AHI (Neu)
* entry[+].fullUrl = "urn:uuid:60f70819-0123-4456-7890-1a2b3c4d5e6f"
* entry[=].resource = Example-AHI-BREAS
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 7 — Observation AMV (Neu)
* entry[+].fullUrl = "urn:uuid:7008192a-1234-4567-8901-2a3b4c5d6e7f"
* entry[=].resource = Example-AMV-BREAS-gemessen
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 8 — DeviceAlert (AtemfrequenzHoch, limit-based)
* entry[+].fullUrl = "urn:uuid:80192a3b-1234-4567-8901-3a4b5c6d7e90"
* entry[=].resource = Example-DeviceAlert-AtemfrequenzHoch-BREAS
* entry[=].request.method = #POST
* entry[=].request.url = "Basic"
