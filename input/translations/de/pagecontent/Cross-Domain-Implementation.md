Diese Seite behandelt die Implementierung der grundlegenden Profile für Organisationen und Patienten.

### Patient

**Profil-ID:** `t-cabs-patient`  
**Basis:** `MII PR Person Patient (Pseudonymisiert)` (MII - Basismodul (2026.0.0))

#### MII-Compliance

Das T-CABS Patient-Profil erweitert das pseudonymisierte MII-Patientenprofil. Patienten werden über einen pseudonymisierten Identifikator identifiziert. Zur Anonymisierung werden keine Adressdaten gespeichert (`Patient.address` ist verboten, `0..0`), und das Geburtsdatum wird auf das **Geburtsjahr (JJJJ)** reduziert — Monat und Tag dürfen nicht angegeben werden (erzwungen durch die Invariante `tcabs-pat-birthyear`).

#### Verwendungszweck

Das Profil gewährleistet eine datenschutzkonforme Patientenidentifikation im telemedizinischen Monitoring. Verpflichtend sind `Patient.identifier[PseudonymisierterIdentifier]`, `Patient.gender` und `Patient.birthDate` (nur Geburtsjahr).

#### Implementierung

Verpflichtende Angaben für einen T-CABS Patienten:
- `Patient.identifier[PseudonymisierterIdentifier]` — pseudonymisierter Identifikator
- `Patient.gender` — administratives Geschlecht
- `Patient.birthDate` — **nur Geburtsjahr (JJJJ)**; die Invariante `tcabs-pat-birthyear` weist Werte mit Monat oder Tag zurück

Verboten (Anonymisierung):
- `Patient.address` — wird nicht gespeichert (`0..0`)

Beispielinstanz eines pseudonymisierten Patienten in der T-CABS Studie:
```json
{
  "resourceType": "Patient",
  "id": "tcabs-patient-example",
  "meta": {
    "profile": ["https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-patient"]
  },
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
            "code": "PSEUDED"
          }
        ]
      },
      "system": "http://tcabs.example.org/patients",
      "value": "TCABS-PAT-001"
    }
  ],
  "gender": "male",
  "birthDate": "1985",
  "deceasedBoolean": false,
  "managingOrganization": {
    "reference": "Organization/CABS"
  },
  "generalPractitioner": [
    {
      "reference": "Practitioner/tcabs-practitioner-example"
    }
  ]
}
```

#### Integration

Das Patient-Profil ist eine zentrale Referenz für:

- **Alle Observations:** Beatmungsparameter und Vitalwerte über `Observation.subject`
- **Devices:** Gerätezuordnung über `Device.patient`
- **Procedures:** Beatmungstherapie `Procedure.subject`
- **Encounters:** Telemedizinische Visiten
- **DiagnosticReports:** Klinische Befunde


### Organisation

**Profil-ID:** `t-cabs-organisation`  
**Basis:** `Organization` (FHIR R4 Core)

#### Verwendungszweck

Das Organisation-Profil dient zur Repräsentation von Gesundheitsdienstleistern, die an der T-CABS Studie beteiligt sind, insbesondere Homecare-Provider. Um die Implementierung zu vereinfachen ist nur das Element `Organisation.name` verpflichtend, alle weiteren Elemente sind optional. Die Zuordnung wird durch eine Referenz innerhalb der Devices über das Element `Device.owner` abgebildet. 


#### Implementierung

Beispielinstanz des Providers Jochum:

```json
{
  "resourceType": "Organization",
  "id": "beispiel-provider-jochum",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-organisation"]
  },
  "identifier": [
    {
      "system": "http://fhir.de/NamingSystem/arge-ik/iknr",
      "value": "123456789"
    }
  ],
  "active": true,
  "type": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/organization-type",
          "code": "prov",
          "display": "Healthcare Provider"
        }
      ]
    }
  ],
  "name": "Jochum - Home Care Provider",
  "telecom": [
    {
      "system": "phone",
      "value": "+49-30-12345678"
    }
  ],
  "address": [
    {
      "line": ["Musterstra�e 123"],
      "city": "Berlin",
      "postalCode": "10115",
      "country": "DE"
    }
  ]
}
```
