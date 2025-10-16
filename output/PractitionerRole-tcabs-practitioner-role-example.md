# T-CABS PractitionerRole Funktion Beispiel - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **T-CABS PractitionerRole Funktion Beispiel**

## Example PractitionerRole: T-CABS PractitionerRole Funktion Beispiel

Profile: [T-CABS Funktion](StructureDefinition-t-cabs-practitioner-funktion.md)

**active**: true

**practitioner**: [Practitioner Anna Schmidt](Practitioner-tcabs-practitioner-example.md)

**organization**: [Organization Charité Campus Mitte](Organization-CABS.md)

**code**: Respiratory physician



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "tcabs-practitioner-role-example",
  "meta" : {
    "profile" : [
      "http://t-cabs.org/StructureDefinition/t-cabs-practitioner-funktion"
    ]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/tcabs-practitioner-example"
  },
  "organization" : {
    "reference" : "Organization/CABS"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "41672002",
          "display" : "Respiratory physician"
        },
        {
          "system" : "urn:oid:1.2.276.0.76.5.514",
          "code" : "140",
          "display" : "Innere Medizin und Pneumologie"
        }
      ]
    }
  ]
}

```
