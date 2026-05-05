This page covers the implementation of the fundamental profiles for organizations and patients.

### Patient

**Profile ID:** `t-cabs-patient`  
**Base:** `MII PR Person Patient (Pseudonymisiert)` (MII - Base Module (2026.0.0))

#### MII Compliance

The T-CABS Patient profile extends the MII pseudonymized patient profile. Patient data is pseudonymized — no names, addresses, or dates of birth are stored. Patients are identified solely through a pseudonymized identifier.

#### Purpose

The profile ensures privacy-compliant patient identification in telemedical monitoring. Only `Patient.identifier[PseudonymisierterIdentifier]` is mandatory.

#### Implementation
Mandatory specifications for a T-CABS Patient:
- Patient.identifier[PseudonymisierterIdentifier] - Pseudonymized identifier

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column.

Example instance of a pseudonymized patient in the T-CABS study:

```json
{
  "resourceType": "Patient",
  "id": "tcabs-patient-example",
  "meta": {
    "profile": [
      "https://bih-cei.github.io/T-CABS/StructureDefinition/t-cabs-patient"
    ]
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
Mandatory specifications for a T-CABS Organization:
- Organization.name - Name of the Organization

**Note:** The repeatability of elements is not specified at this point; it is indicated in the profile representations in the "Card." column.

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