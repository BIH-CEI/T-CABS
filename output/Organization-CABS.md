# Centrum für Außerklinische Beatmung und Sauerstofftherapie (CABS) - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Centrum für Außerklinische Beatmung und Sauerstofftherapie (CABS)**

## Example Organization: Centrum für Außerklinische Beatmung und Sauerstofftherapie (CABS)

Profile: [T-CABS Organisation](StructureDefinition-t-cabs-organisation.md)

**active**: true

**type**: Healthcare Provider

**name**: Charité Campus Mitte

**telecom**: [+49 30 450 550 137](tel:+4930450550137), [cabs@charite.de](mailto:cabs@charite.de)

**address**: Charitéplatz 1 Sauerbruchweg 3, Ebene 3 Berlin 10117 DE (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "CABS",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-organisation"]
  },
  "active" : true,
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }
      ]
    }
  ],
  "name" : "Charité Campus Mitte",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+49 30 450 550 137",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "cabs@charite.de",
      "use" : "work"
    }
  ],
  "address" : [
    {
      "use" : "work",
      "type" : "both",
      "line" : ["Charitéplatz 1", "Sauerbruchweg 3, Ebene 3"],
      "city" : "Berlin",
      "postalCode" : "10117",
      "country" : "DE"
    }
  ]
}

```
