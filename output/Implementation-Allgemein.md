# Implementation Allgemein - v0.1.0

* [**Table of Contents**](toc.md)
* **Implementation Allgemein**

## Implementation Allgemein

Diese Seite behandelt die Implementierung der grundlegenden Profile für Organisationen und Patienten.

### Patient

**Profil-ID:** `t-cabs-patient`
 **Basis:** `MII PR Person Patient` (MII - Basismodul Person (2024+))

#### MII-Compliance

Das T-CABS Patient-Profil erweitert das Profil [MII PR Person Patient](https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient) und erhält dadurch:

* **Deutsche Basisdatentypen:** Adresse, Name, Identifier
* **Kontaktdaten:** Telefon, E-Mail für Telemedizin

Außerdem basiert das Profil auf den Vorarbeiten der [International Patient Summary (IPS)]() und strebt Kompatibilität zu den Spezifikationen der KBV und gematik an.

#### Verwendungszweck

Die Datenelemente des Patient-Profil sind überwiegend optional, um eine Implementierung zu erleichtern. Verpflichtend sind lediglich `Patient.identifier` und `Patient.name`.

#### Implementierung

Beispielinstanz eines Patienten in der T-CABS Studie:

```
{
  "resourceType": "Patient",
  "id": "tcabs-patient-example",
  "meta": {
    "profile": ["http://t-cabs.org/StructureDefinition/t-cabs-patient"]
  },
  "identifier": [
    {
      "type": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code": "MR"
          }
        ]
      },
      "system": "http://tcabs.example.org/patient-id",
      "value": "T-CABS-PAT-001"
    }
  ],
  "name": [
    {
      "use": "official",
      "family": "Mustermann",
      "given": ["Max"]
    }
  ],
  "gender": "male",
  "birthDate": "1965-03-15"
}

```

#### Integration

Das Patient-Profil ist eine zentrale Referenz für:

* **Alle Observations:** Beatmungsparameter und Vitalwerte über `Observation.subject`
* **Devices:** Gerätezuordnung über `Device.patient`
* **Procedures:** Beatmungstherapie `Procedure.subject`
* **Encounters:** Telemedizinische Visiten
* **DiagnosticReports:** Klinische Befunde

### Organisation

**Profil-ID:** `t-cabs-organisation`
 **Basis:** `Organization` (FHIR R4 Core)

#### Verwendungszweck

Das Organisation-Profil dient zur Repräsentation von Gesundheitsdienstleistern, die an der T-CABS Studie beteiligt sind, insbesondere Homecare-Provider. Um die Implementierung zu vereinfachen ist nur das Element `Organisation.name` verpflichtend, alle weiteren Elemente sind optional. Die Zuordnung wird durch eine Referenz innerhalb der Devices über das Element `Device.owner` abgebildet.

#### Implementierung

Beispielinstanz des Providers Jochum:

```
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

