This page covers the implementation of the fundamental profiles for organizations and patients.

### Patient

**Profile ID:** `t-cabs-patient`  
**Base:** `MII PR Person Patient` (MII - Person Base Module (2024+))

#### MII Compliance

The T-CABS Patient profile extends the MII PR Person Patient Profile.
Additionally, the profile is based on the preparatory work of the [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/history.html) and aims for compatibility with the specifications of KBV and gematik.

#### Purpose

The data elements of the Patient profile are predominantly optional to facilitate implementation. Only `Patient.identifier` and `Patient.name` are mandatory.

#### Implementation

Example instance of a patient in the T-CABS study:

```json
{
  "resourceType": "Patient",
  "id": "tcabs-patient-example",
  "meta": {
    "profile": [
      "http://t-cabs.org/StructureDefinition/t-cabs-patient"
    ]
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
      "system": "http://tcabs.example.org/patients",
      "value": "TCABS-PAT-001"
    }
  ],
  "name": [
    {
      "given": [
        "Max"
      ],
      "use": "official",
      "family": "Mustermann"
    }
  ],
  "address": [
    {
      "line": [
        "Musterstraße 123"
      ],
      "type": "both",
      "city": "Berlin",
      "postalCode": "10115",
      "country": "DE",
      "use": "home"
    }
  ],
  "generalPractitioner": [
    {
      "reference": "Practitioner/tcabs-practitioner-example"
    }
  ],
  "gender": "male",
  "birthDate": "1980-01-15",
  "deceasedBoolean": false,
  "managingOrganization": {
    "reference": "Organization/CABS"
  }
}
```

#### Integration

The Patient profile is a central reference for:

- **All Observations:** Ventilation parameters and vital signs via `Observation.subject`
- **Devices:** Device assignment via `Device.patient`
- **Procedures:** Ventilation therapy `Procedure.subject`
- **Encounters:** Telemedicine visits
- **DiagnosticReports:** Clinical findings

### Organization

**Profile ID:** `t-cabs-organisation`  
**Base:** `Organization` (FHIR R4 Core)

#### Purpose

The Organization profile serves to represent healthcare providers involved in the T-CABS study, particularly homecare providers. To simplify implementation, only the `Organization.name` element is mandatory, all other elements are optional. The assignment is mapped through a reference within the devices via the `Device.owner` element.

#### Implementation

Example instance of the Jochum provider:

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
      "line": ["Musterstraße 123"],
      "city": "Berlin",
      "postalCode": "10115",
      "country": "DE"
    }
  ]
}
```