# Beispiel Provider Jochum - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Provider Jochum**

## Example Organization: Beispiel Provider Jochum

Profile: [T-CABS Organisation](StructureDefinition-t-cabs-organisation.md)

**identifier**: `http://tcabs.example.org/providers`/PROV-JOCHUM-001

**name**: Jochum GmbH



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "beispiel-provider-jochum",
  "meta" : {
    "profile" : ["http://t-cabs.org/StructureDefinition/t-cabs-organisation"]
  },
  "identifier" : [
    {
      "system" : "http://tcabs.example.org/providers",
      "value" : "PROV-JOCHUM-001"
    }
  ],
  "name" : "Jochum GmbH"
}

```
